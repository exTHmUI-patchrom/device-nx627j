.class Lcom/android/server/am/LaunchParamsController;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;,
        Lcom/android/server/am/LaunchParamsController$LaunchParams;
    }
.end annotation


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private final mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 48
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 49
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 53
    return-void
.end method


# virtual methods
.method calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V
    .locals 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "result"    # Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v0, p0

    .line 79
    move-object/from16 v1, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 84
    iget-object v2, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 85
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v4, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 86
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 87
    iget-object v4, v0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;

    .line 89
    .local v4, "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    instance-of v5, v4, Lcom/android/server/am/TaskLaunchParamsModifier;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 90
    move-object v5, v4

    check-cast v5, Lcom/android/server/am/TaskLaunchParamsModifier;

    .line 91
    .local v5, "taskModifier":Lcom/android/server/am/TaskLaunchParamsModifier;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 94
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v3

    .line 95
    .local v7, "isPort":Z
    :goto_2
    iget-object v8, v0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v8, v7}, Lcom/android/server/am/TaskLaunchParamsModifier;->setPort(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 100
    .end local v5    # "taskModifier":Lcom/android/server/am/TaskLaunchParamsModifier;
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "isPort":Z
    :cond_2
    iget-object v11, v0, Lcom/android/server/am/LaunchParamsController;->mTmpCurrent:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v12, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v5, v4

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v5 .. v12}, Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .end local v4    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    goto :goto_3

    .line 111
    .restart local v4    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :pswitch_0
    iget-object v5, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v5}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .end local v4    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    goto :goto_3

    .line 107
    .restart local v4    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/am/LaunchParamsController;->mTmpResult:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 108
    return-void

    .line 104
    :pswitch_2
    nop

    .line 84
    .end local v4    # "modifier":Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 122
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 127
    iget-object v6, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 138
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v0, v2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->moveStackToDisplay(II)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 143
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v0, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 149
    return v0

    .line 151
    :cond_3
    nop

    .line 154
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 151
    return v1

    .line 154
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/LaunchParamsController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 61
    new-instance v0, Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-direct {v0}, Lcom/android/server/am/TaskLaunchParamsModifier;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    .line 65
    new-instance v0, Lcom/android/server/am/ActivityLaunchParamsModifier;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityLaunchParamsModifier;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/LaunchParamsController;->registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V

    .line 66
    return-void
.end method

.method registerModifier(Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;)V
    .locals 1
    .param p1, "modifier"    # Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method
