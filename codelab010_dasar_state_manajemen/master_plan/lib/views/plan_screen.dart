import '../models/data_layer.dart';
import '../provider/plan_provider.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get plan => widget.plan;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(plan.name),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    currentPlan.completenessMessage,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
     backgroundColor: Colors.green,
     foregroundColor: Colors.white,
     child: const Icon(Icons.add),
     onPressed: () {
       int planIndex = planNotifier.value.indexWhere((p) => p.name == plan.name);
       if (planIndex != -1) {
         Plan currentPlan = planNotifier.value[planIndex];
         List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
           ..add(const Task());
         
         List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
         updatedPlans[planIndex] = Plan(
           name: currentPlan.name,
           tasks: updatedTasks,
         );
         planNotifier.value = updatedPlans;
       }
     },
    );
  }

  Widget _buildList(Plan plan) {
     return ListView.builder(
       controller: scrollController,
       keyboardDismissBehavior: Theme.of(context).platform ==
           TargetPlatform.iOS
             ? ScrollViewKeyboardDismissBehavior.onDrag
             : ScrollViewKeyboardDismissBehavior.manual,
       itemCount: plan.tasks.length,
       itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
     );
   }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        activeColor: Colors.green,
        checkColor: Colors.white,
        onChanged: (selected) {
          int planIndex = planNotifier.value.indexWhere((p) => p.name == plan.name);
          if (planIndex != -1) {
            Plan currentPlan = planNotifier.value[planIndex];
            List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
            updatedTasks[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );
            
            List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
            updatedPlans[planIndex] = Plan(
              name: currentPlan.name,
              tasks: updatedTasks,
            );
            planNotifier.value = updatedPlans;
          }
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
        ),
        cursorColor: Colors.green,
        onChanged: (text) {
          int planIndex = planNotifier.value.indexWhere((p) => p.name == plan.name);
          if (planIndex != -1) {
            Plan currentPlan = planNotifier.value[planIndex];
            List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
            updatedTasks[index] = Task(
              description: text,
              complete: task.complete,
            );
            
            List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
            updatedPlans[planIndex] = Plan(
              name: currentPlan.name,
              tasks: updatedTasks,
            );
            planNotifier.value = updatedPlans;
          }
        },
      ),
    );
  }
}