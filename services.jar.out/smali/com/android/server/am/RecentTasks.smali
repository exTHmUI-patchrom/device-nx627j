.class Lcom/android/server/am/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z = false

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIMMED:Z = true


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMaxNumTasks:I

.field private mHasQQ:Z

.field private mHasVisibleRecentTasks:Z

.field private mHasWeixin:Z

.field private mHighlightsCmpName:Landroid/content/ComponentName;

.field private mIsInBackTemp:Z

.field private mIsInFrontTemp:Z

.field private mIsReplaceOld:Z

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

.field private final mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    sget-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    sput-object v0, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 123
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 124
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 159
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mHasWeixin:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mHasQQ:Z

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 188
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 189
    new-instance v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 190
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 193
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.gamehighlights"

    const-string v3, "cn.nubia.gamehighlights.Activity.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mHighlightsCmpName:Landroid/content/ComponentName;

    .line 1714
    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mIsReplaceOld:Z

    .line 1715
    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mIsInFrontTemp:Z

    .line 1716
    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mIsInBackTemp:Z

    .line 209
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 211
    .local v1, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 212
    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 213
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 214
    new-instance v2, Lcom/android/server/am/TaskPersister;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 215
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 216
    const v2, 0x1120079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 218
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskPersister;Lcom/android/server/am/UserController;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskPersister"    # Lcom/android/server/am/TaskPersister;
    .param p3, "userController"    # Lcom/android/server/am/UserController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 159
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mHasWeixin:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mHasQQ:Z

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 188
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 189
    new-instance v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v2}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 190
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 193
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.gamehighlights"

    const-string v4, "cn.nubia.gamehighlights.Activity.SettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mHighlightsCmpName:Landroid/content/ComponentName;

    .line 1714
    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mIsReplaceOld:Z

    .line 1715
    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mIsInFrontTemp:Z

    .line 1716
    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mIsInBackTemp:Z

    .line 200
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 201
    iput-object p3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 202
    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 203
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 205
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 206
    return-void
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 715
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I
    .locals 18
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    .line 1388
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1389
    .local v2, "recentsCount":I
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1390
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1391
    .local v6, "document":Z
    :goto_0
    iget v7, v1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    sub-int/2addr v7, v5

    .line 1392
    .local v7, "maxRecents":I
    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "maxRecents":I
    :goto_1
    if-ge v7, v2, :cond_e

    .line 1393
    iget-object v9, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1394
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq v1, v9, :cond_d

    .line 1395
    invoke-direct {v0, v1, v9}, Lcom/android/server/am/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v11, :cond_1

    .line 1397
    goto/16 :goto_7

    .line 1399
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1400
    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 1401
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 1402
    .local v11, "sameAffinity":Z
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v5

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 1403
    .local v12, "sameIntent":Z
    :goto_3
    const/4 v13, 0x0

    .line 1404
    .local v13, "multiTasksAllowed":Z
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v14

    .line 1405
    .local v14, "flags":I
    const/high16 v15, 0x10080000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    const/high16 v15, 0x8000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    .line 1407
    const/4 v13, 0x1

    .line 1409
    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_5

    move v15, v5

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 1410
    .local v15, "trIsDocument":Z
    :goto_4
    if-eqz v6, :cond_6

    if-eqz v15, :cond_6

    move/from16 v16, v5

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    .line 1411
    .local v16, "bothDocuments":Z
    :goto_5
    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-nez v16, :cond_7

    .line 1412
    goto :goto_7

    .line 1415
    :cond_7
    if-eqz v16, :cond_b

    .line 1417
    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1419
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 1420
    .local v4, "sameActivity":Z
    :goto_6
    if-nez v4, :cond_9

    .line 1423
    goto :goto_7

    .line 1424
    :cond_9
    if-lez v8, :cond_a

    .line 1425
    add-int/lit8 v8, v8, -0x1

    .line 1426
    if-eqz v12, :cond_c

    if-eqz v13, :cond_a

    .line 1430
    goto :goto_7

    .line 1435
    .end local v4    # "sameActivity":Z
    :cond_a
    goto :goto_8

    :cond_b
    if-nez v6, :cond_c

    if-eqz v15, :cond_d

    .line 1437
    nop

    .line 1392
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v10    # "trIntent":Landroid/content/Intent;
    .end local v11    # "sameAffinity":Z
    .end local v12    # "sameIntent":Z
    .end local v13    # "multiTasksAllowed":Z
    .end local v14    # "flags":I
    .end local v15    # "trIsDocument":Z
    .end local v16    # "bothDocuments":Z
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1440
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_d
    :goto_8
    return v7

    .line 1442
    .end local v7    # "i":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_e
    const/4 v4, -0x1

    return v4
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 12
    .param p1, "t1"    # Lcom/android/server/am/TaskRecord;
    .param p2, "t2"    # Lcom/android/server/am/TaskRecord;

    .line 1695
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 1696
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    .line 1697
    .local v1, "windowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1698
    .local v4, "isUndefinedType":Z
    :goto_0
    if-nez v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1699
    .local v5, "isUndefinedMode":Z
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 1700
    .local v6, "otherActivityType":I
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v7

    .line 1701
    .local v7, "otherWindowingMode":I
    if-nez v6, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    .line 1702
    .local v8, "isOtherUndefinedType":Z
    :goto_2
    if-nez v7, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    .line 1706
    .local v9, "isOtherUndefinedMode":Z
    :goto_3
    if-eq v0, v6, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v10, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v3

    .line 1708
    .local v10, "isCompatibleType":Z
    :goto_5
    if-eq v1, v7, :cond_7

    if-nez v5, :cond_7

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v11, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v3

    .line 1711
    .local v11, "isCompatibleMode":Z
    :goto_7
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    move v2, v3

    nop

    :cond_8
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "quietProfileUserIds"    # Landroid/util/SparseBooleanArray;

    .line 1205
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1208
    return v1

    .line 1211
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_1

    .line 1213
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1214
    .local v0, "affiliatedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    .line 1215
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1218
    return v1

    .line 1224
    .end local v0    # "affiliatedTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "numVisibleTasks"    # I

    .line 1301
    nop

    .line 1302
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1304
    .local v0, "isExcludeFromRecents":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1306
    if-ne p2, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2

    .line 1309
    :cond_2
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-gt p2, v1, :cond_3

    .line 1312
    return v3

    .line 1315
    :cond_3
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v1, :cond_5

    .line 1317
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-gt p2, v1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 1320
    :cond_5
    iget-wide v4, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 1325
    return v3

    .line 1330
    :cond_6
    return v2
.end method

.method private isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mHighlightsCmpName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1240
    return v1

    .line 1244
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1252
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 1255
    return v1

    .line 1248
    :pswitch_1
    return v1

    .line 1260
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1265
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1266
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1268
    return v1

    .line 1262
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :pswitch_3
    return v1

    .line 1273
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->getRootTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1274
    return v1

    .line 1293
    :cond_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 2
    .param p0, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p1, "rhs"    # Lcom/android/server/am/TaskRecord;

    .line 119
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 397
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .line 1519
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1520
    .local v0, "recentsCount":I
    move-object v1, p1

    .line 1521
    .local v1, "top":Lcom/android/server/am/TaskRecord;
    move-object v2, v1

    move v1, p2

    .line 1522
    .local v1, "topIndex":I
    .local v2, "top":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    .line 1523
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1524
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1529
    :cond_0
    iget v3, v2, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    .line 1530
    .local v3, "sane":Z
    :goto_1
    move v4, v1

    .line 1531
    .local v4, "endIndex":I
    move v7, v4

    move-object v4, v2

    .line 1532
    .local v4, "prev":Lcom/android/server/am/TaskRecord;
    .local v7, "endIndex":I
    :goto_2
    if-ge v7, v0, :cond_a

    .line 1533
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1536
    .local v8, "cur":Lcom/android/server/am/TaskRecord;
    const/4 v9, -0x1

    if-ne v8, v2, :cond_3

    .line 1538
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v9, :cond_4

    .line 1539
    :cond_2
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": first task has next affiliate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v3, 0x0

    .line 1542
    goto/16 :goto_4

    .line 1546
    :cond_3
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v4, :cond_9

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_4

    goto/16 :goto_3

    .line 1557
    :cond_4
    iget v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v9, :cond_5

    .line 1559
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_a

    .line 1560
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1569
    :cond_5
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_6

    .line 1570
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but should be id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v3, 0x0

    .line 1575
    goto/16 :goto_4

    .line 1578
    :cond_6
    iget v9, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v9, v10, :cond_7

    .line 1579
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has affiliated id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " but should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v3, 0x0

    .line 1584
    goto :goto_4

    .line 1586
    :cond_7
    move-object v4, v8

    .line 1587
    add-int/lit8 v7, v7, 0x1

    .line 1588
    if-lt v7, v0, :cond_8

    .line 1589
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain ran off index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v3, 0x0

    .line 1592
    goto :goto_4

    .line 1594
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_8
    goto/16 :goto_2

    .line 1548
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_9
    :goto_3
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": middle task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has bad next affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v3, 0x0

    .line 1554
    nop

    .line 1595
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    .line 1596
    if-ge v7, p2, :cond_b

    .line 1597
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": did not extend to task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/4 v3, 0x0

    .line 1602
    :cond_b
    if-eqz v3, :cond_d

    .line 1605
    move v5, v1

    .local v5, "i":I
    :goto_5
    if-gt v5, v7, :cond_c

    .line 1608
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1609
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1605
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1613
    .end local v5    # "i":I
    :cond_c
    return v6

    .line 1617
    :cond_d
    return v5
.end method

.method private notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 13
    .param p1, "start"    # I

    .line 1447
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1448
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1451
    .local v1, "affiliateId":I
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    .line 1456
    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1457
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 1461
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1462
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_2

    .line 1463
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1464
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v4, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_1

    .line 1465
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1466
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1472
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1476
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1477
    .local v2, "first":Lcom/android/server/am/TaskRecord;
    iput-boolean v3, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1478
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 1479
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1481
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1484
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1485
    .local v5, "tmpSize":I
    move v7, v4

    .local v7, "i":I
    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_6

    .line 1486
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1487
    .local v8, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1488
    .local v9, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v9, :cond_4

    .line 1489
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1492
    invoke-virtual {p0, v8, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1494
    :cond_4
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v8, :cond_5

    .line 1495
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v9, v8}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1498
    invoke-virtual {p0, v9, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1500
    :cond_5
    iput-boolean v3, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1485
    .end local v8    # "next":Lcom/android/server/am/TaskRecord;
    .end local v9    # "prev":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1503
    .end local v7    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1504
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_7

    .line 1505
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1507
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1511
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1512
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1515
    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    .line 1361
    .local v0, "removeIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1363
    return-void

    .line 1369
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1370
    .local v1, "removedTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    if-eq v1, p1, :cond_1

    .line 1372
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/RecentTasks;->mIsReplaceOld:Z

    .line 1373
    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->isInScreen(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/RecentTasks;->mIsInFrontTemp:Z

    .line 1374
    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->isInScreen(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/RecentTasks;->mIsInBackTemp:Z

    .line 1376
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1380
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1381
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 521
    if-gtz p1, :cond_0

    .line 522
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 527
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 528
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 526
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 534
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 458
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 434
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 435
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 433
    .end local v2    # "userId":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 442
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 443
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 447
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No task ids found for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mPersistedTaskIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 441
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 454
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .locals 9

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1137
    .local v0, "recentsCount":I
    :goto_0
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1139
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1140
    add-int/lit8 v0, v0, -0x1

    .line 1143
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 1146
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v1

    .line 1147
    .local v1, "profileUserIds":[I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1148
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v1, v5

    .line 1149
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1150
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1151
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1148
    .end local v6    # "userId":I
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1158
    :cond_2
    const/4 v3, 0x0

    .line 1159
    .local v3, "numVisibleTasks":I
    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "numVisibleTasks":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1160
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1162
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1163
    iget-boolean v7, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v7, :cond_3

    .line 1165
    add-int/lit8 v3, v3, 0x1

    .line 1166
    goto :goto_2

    .line 1169
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1171
    add-int/lit8 v3, v3, 0x1

    .line 1172
    goto :goto_2

    .line 1174
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1175
    invoke-direct {p0, v6, v5}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->isTrimmable(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1177
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 1178
    goto :goto_2

    .line 1192
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1193
    invoke-direct {p0, v6, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1194
    invoke-virtual {p0, v6, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1195
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_2

    .line 1196
    .end local v3    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/TaskRecord;)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 959
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 963
    .local v0, "isAffiliated":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 967
    .local v1, "recentsCount":I
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_2

    .line 970
    return-void

    .line 973
    :cond_2
    if-nez v0, :cond_3

    if-lez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 975
    return-void

    .line 979
    :cond_3
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    iget-boolean v4, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_4

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 980
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_4

    .line 983
    return-void

    .line 986
    :cond_4
    const/4 v4, 0x0

    .line 989
    .local v4, "needAffiliationFix":Z
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->sendActivityStackChangedIntent()V

    .line 994
    :cond_5
    iget-boolean v5, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_7

    .line 995
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 996
    .local v5, "taskIndex":I
    if-ltz v5, :cond_6

    .line 997
    nop

    .line 999
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1000
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1001
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1004
    return-void

    .line 1017
    :cond_6
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v4, 0x1

    .line 1024
    .end local v5    # "taskIndex":I
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/am/RecentTasks;->mIsReplaceOld:Z

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeForAddTask(Lcom/android/server/am/TaskRecord;)V

    .line 1028
    iget-boolean v5, p0, Lcom/android/server/am/RecentTasks;->mIsReplaceOld:Z

    if-eqz v5, :cond_9

    .line 1029
    iget-boolean v5, p0, Lcom/android/server/am/RecentTasks;->mIsInFrontTemp:Z

    if-eqz v5, :cond_8

    .line 1030
    invoke-virtual {p1, v3}, Lcom/android/server/am/TaskRecord;->setInScreen(I)V

    .line 1032
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/am/RecentTasks;->mIsInBackTemp:Z

    if-eqz v5, :cond_9

    .line 1033
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setInScreen(I)V

    .line 1038
    :cond_9
    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1039
    if-eqz v0, :cond_10

    if-eqz v4, :cond_a

    goto :goto_4

    .line 1045
    :cond_a
    if-eqz v0, :cond_11

    .line 1048
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1049
    .local v2, "other":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_b

    .line 1050
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1052
    :cond_b
    if-eqz v2, :cond_f

    .line 1053
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1054
    .local v3, "otherIndex":I
    if-ltz v3, :cond_e

    .line 1057
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_c

    .line 1060
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "taskIndex":I
    goto :goto_2

    .line 1064
    .end local v5    # "taskIndex":I
    :cond_c
    move v5, v3

    .line 1068
    .restart local v5    # "taskIndex":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 1072
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1074
    return-void

    .line 1079
    :cond_d
    const/4 v4, 0x1

    .line 1080
    .end local v5    # "taskIndex":I
    goto :goto_3

    .line 1083
    :cond_e
    const/4 v3, 0x1

    .line 1085
    .end local v4    # "needAffiliationFix":Z
    .local v3, "needAffiliationFix":Z
    move v4, v3

    .end local v3    # "needAffiliationFix":Z
    .restart local v4    # "needAffiliationFix":Z
    :goto_3
    goto :goto_5

    .line 1088
    :cond_f
    const/4 v4, 0x1

    .end local v2    # "other":Lcom/android/server/am/TaskRecord;
    goto :goto_5

    .line 1042
    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 1092
    :cond_11
    :goto_5
    if-eqz v4, :cond_12

    .line 1094
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 1098
    :cond_12
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->trimInactiveRecentTasks()V

    .line 1099
    return-void
.end method

.method addToBottom(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    return v0

    .line 1111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1112
    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 581
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 582
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 583
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p3, :cond_0

    .line 584
    goto :goto_3

    .line 587
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 588
    .local v3, "cn":Landroid/content/ComponentName;
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 589
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    .line 590
    .local v5, "sameComponent":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 591
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string v8, "disabled-package"

    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 581
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "sameComponent":Z
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method cleanupLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, "recentsCount":I
    if-nez v0, :cond_0

    .line 607
    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 612
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 614
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 615
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 616
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 617
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p1, :cond_1

    .line 619
    goto/16 :goto_5

    .line 621
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2

    .line 623
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 624
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 625
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    goto/16 :goto_5

    .line 629
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    .line 630
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 631
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_4

    .line 636
    :try_start_0
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 642
    nop

    .line 643
    if-nez v4, :cond_3

    .line 644
    sget-object v4, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 646
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    :catch_0
    move-exception v5

    .line 641
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 648
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    if-ne v4, v6, :cond_9

    .line 652
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 653
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 654
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_6

    .line 656
    :try_start_1
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-interface {v1, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v8

    .line 661
    nop

    .line 662
    if-nez v6, :cond_5

    .line 663
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 665
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 658
    :catch_1
    move-exception v5

    .line 660
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 667
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    sget-object v8, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v8, :cond_8

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_7

    goto :goto_3

    .line 678
    :cond_7
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 680
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_5

    .line 670
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 672
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    goto :goto_5

    .line 681
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_9
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_b

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_b

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-nez v6, :cond_a

    goto :goto_4

    .line 695
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_5

    .line 691
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_b
    :goto_4
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 615
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_c
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 702
    .end local v2    # "i":I
    :cond_d
    const/4 v2, 0x0

    .line 703
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 704
    :goto_6
    if-ge v2, v0, :cond_e

    .line 705
    invoke-direct {p0, v2}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_6

    .line 708
    :cond_e
    return-void
.end method

.method containsTaskId(II)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 407
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .line 1660
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1661
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1662
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1663
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1664
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1665
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1666
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 1667
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    .line 1668
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 1669
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1670
    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 1671
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    .line 1672
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 1673
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1674
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1675
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 1677
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1678
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .line 1679
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1681
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    .line 1682
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1683
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1684
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    nop

    :cond_3
    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1686
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 1621
    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    return-void

    .line 1628
    :cond_0
    const/4 v0, 0x0

    .line 1629
    .local v0, "printedAnything":Z
    const/4 v1, 0x0

    .line 1630
    .local v1, "printedHeader":Z
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1631
    .local v2, "size":I
    const/4 v3, 0x0

    .line 1631
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1632
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1633
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz p3, :cond_1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1634
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1635
    goto :goto_1

    .line 1638
    :cond_1
    if-nez v1, :cond_2

    .line 1639
    const-string v5, "  Recent tasks:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const/4 v1, 0x1

    .line 1641
    const/4 v0, 0x1

    .line 1643
    :cond_2
    const-string v5, "  * Recent #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1645
    if-eqz p2, :cond_3

    .line 1646
    const-string v5, "    "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1631
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1650
    .end local v3    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 1651
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    :cond_5
    return-void
.end method

.method flush()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 477
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 479
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    .line 480
    return-void

    .line 478
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 724
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 725
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 729
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_0

    .line 730
    goto :goto_1

    .line 732
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 733
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 734
    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 737
    .local v5, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v6, Lcom/android/server/am/AppTaskImpl;

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {v6, v7, v8, p1}, Lcom/android/server/am/AppTaskImpl;-><init>(Lcom/android/server/am/ActivityManagerService;II)V

    .line 738
    .local v6, "taskImpl":Lcom/android/server/am/AppTaskImpl;
    invoke-virtual {v6}, Lcom/android/server/am/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "taskImpl":Lcom/android/server/am/AppTaskImpl;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 895
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 896
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 899
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 900
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 901
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    if-eqz v4, :cond_2

    .line 903
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 7

    .line 920
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 921
    .local v0, "res":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 922
    .local v1, "size":I
    const/4 v2, 0x0

    .line 924
    .local v2, "numVisibleTasks":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/RecentTasks;->mHasWeixin:Z

    .line 925
    iput-boolean v3, p0, Lcom/android/server/am/RecentTasks;->mHasQQ:Z

    .line 927
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 928
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 929
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 930
    add-int/lit8 v2, v2, 0x1

    .line 931
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    iget v5, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 927
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 936
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .locals 21
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "getDetailedTasks"    # Z
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    .line 748
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 750
    .local v3, "withExcluded":Z
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x4

    invoke-virtual {v6, v2, v7}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 751
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is still locked. Cannot load recents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 755
    :cond_1
    iget-object v6, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v6

    .line 756
    .local v6, "ssm":Lnubia/os/screenswitch/ScreenSwitchInternal;
    const/4 v7, 0x0

    .line 757
    .local v7, "screenId":I
    const/4 v8, 0x0

    .line 758
    .local v8, "isGetTaskByScreen":Z
    if-eqz v6, :cond_3

    .line 759
    invoke-virtual {v6}, Lnubia/os/screenswitch/ScreenSwitchInternal;->getShowingDisplayId()I

    move-result v7

    .line 760
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_2

    .line 761
    invoke-virtual {v6}, Lnubia/os/screenswitch/ScreenSwitchInternal;->isMultiTasksEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v8, v4

    .line 764
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V

    .line 766
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v2}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v4

    .line 767
    .local v4, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    iput-boolean v5, v0, Lcom/android/server/am/RecentTasks;->mHasWeixin:Z

    .line 770
    iput-boolean v5, v0, Lcom/android/server/am/RecentTasks;->mHasQQ:Z

    .line 773
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v9, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v10, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 775
    .local v10, "size":I
    const/4 v11, 0x0

    .line 777
    .local v11, "numVisibleTasks":I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 780
    .local v12, "affinityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v13, v11

    move v11, v5

    .line 780
    .local v11, "i":I
    .local v13, "numVisibleTasks":I
    :goto_2
    if-ge v11, v10, :cond_14

    .line 781
    iget-object v14, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 783
    .local v14, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {v0, v14}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 784
    add-int/lit8 v13, v13, 0x1

    .line 785
    invoke-direct {v0, v14, v13}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 797
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v5, p1

    if-lt v15, v5, :cond_5

    .line 798
    nop

    .line 780
    .end local v3    # "withExcluded":Z
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v14    # "tr":Lcom/android/server/am/TaskRecord;
    .local v17, "withExcluded":Z
    .local v19, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    :goto_3
    move/from16 v17, v3

    :goto_4
    move-object/from16 v19, v4

    const/4 v3, 0x0

    goto/16 :goto_6

    .line 802
    .end local v17    # "withExcluded":Z
    .end local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3    # "withExcluded":Z
    .restart local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget v15, v14, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 804
    goto :goto_3

    .line 807
    :cond_6
    iget-boolean v15, v14, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v15, :cond_7

    .line 809
    goto :goto_3

    .line 818
    :cond_7
    if-eqz v11, :cond_8

    if-nez v3, :cond_8

    iget-object v15, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_8

    iget-object v15, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 821
    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x800000

    and-int v15, v15, v16

    if-nez v15, :cond_4

    .line 823
    :cond_8
    if-nez p3, :cond_9

    .line 826
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v16

    if-nez v16, :cond_9

    iget v2, v14, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v17, v3

    move/from16 v3, p6

    if-eq v2, v3, :cond_a

    .line 828
    .end local v3    # "withExcluded":Z
    .restart local v17    # "withExcluded":Z
    goto :goto_4

    .line 831
    .end local v17    # "withExcluded":Z
    .restart local v3    # "withExcluded":Z
    :cond_9
    move/from16 v17, v3

    move/from16 v3, p6

    .line 831
    .end local v3    # "withExcluded":Z
    .restart local v17    # "withExcluded":Z
    :cond_a
    iget-boolean v2, v14, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v2, :cond_b

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_b

    .line 835
    goto :goto_4

    .line 837
    :cond_b
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_c

    iget-boolean v2, v14, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v2, :cond_c

    .line 840
    goto :goto_4

    .line 843
    :cond_c
    iget-boolean v2, v14, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v2, :cond_d

    .line 847
    goto :goto_4

    .line 850
    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v14, v7}, Lcom/android/server/am/TaskRecord;->isInScreen(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 851
    goto :goto_4

    .line 856
    :cond_e
    iget-boolean v2, v14, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    if-nez v2, :cond_f

    .line 857
    const-string v2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "task should not show "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    goto :goto_4

    .line 861
    :cond_f
    if-eqz v14, :cond_11

    iget-object v1, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_11

    .line 862
    iget-object v1, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 864
    .local v2, "affinity":Ljava/lang/String;
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    .line 865
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 866
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 867
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 868
    move-object/from16 v18, v3

    const-string v3, "ActivityManager"

    .line 868
    .end local v3    # "value":Ljava/lang/String;
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 868
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping, same affinity taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "affinity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    .line 870
    iput-boolean v3, v14, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 871
    goto :goto_6

    .line 873
    .end local v18    # "value":Ljava/lang/String;
    .end local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    const/4 v3, 0x0

    .line 873
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "value":Ljava/lang/String;
    .restart local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "affinity":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    goto :goto_5

    .line 879
    .end local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v19, v4

    const/4 v3, 0x0

    .line 879
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_5
    invoke-virtual {v0, v14}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 880
    .local v1, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez p4, :cond_12

    .line 881
    iget-object v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 884
    :cond_12
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .end local v1    # "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14    # "tr":Lcom/android/server/am/TaskRecord;
    goto :goto_6

    .line 780
    .end local v17    # "withExcluded":Z
    .end local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v3, "withExcluded":Z
    .restart local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_13
    move/from16 v17, v3

    move-object/from16 v19, v4

    move v3, v5

    .line 780
    .end local v3    # "withExcluded":Z
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v17    # "withExcluded":Z
    .restart local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move v5, v3

    move/from16 v3, v17

    move-object/from16 v4, v19

    move/from16 v1, p2

    move/from16 v2, p5

    goto/16 :goto_2

    .line 887
    .end local v11    # "i":I
    .end local v17    # "withExcluded":Z
    .end local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3    # "withExcluded":Z
    .restart local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_14
    move/from16 v17, v3

    move-object/from16 v19, v4

    .line 887
    .end local v3    # "withExcluded":Z
    .end local v4    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v17    # "withExcluded":Z
    .restart local v19    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .line 943
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    .local v0, "recentsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 946
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 947
    return-object v2

    .line 944
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p1, "userId"    # I

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 416
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method isCallerRecents(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 305
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method public isNubiaLauncher()Z
    .locals 2

    .line 262
    const-string v0, "debug.nubia.launcher"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 313
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 320
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 322
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 322
    :goto_0
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/am/TaskRecord;)Z
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1337
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1338
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1341
    .local v1, "homeStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1342
    return v2

    .line 1346
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 1347
    return v5

    .line 1351
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 1352
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v6

    if-ge v4, v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    return v2
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const v0, 0x10e0067

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 241
    const v0, 0x10e005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 243
    :cond_0
    const-string/jumbo v0, "ro.recents.grid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const v0, 0x10e0066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 246
    const v0, 0x10e005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 249
    :cond_1
    const v0, 0x10e0065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 251
    const v0, 0x10e005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 254
    :goto_0
    const v0, 0x10e0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 256
    .local v0, "sessionDurationHrs":I
    if-lez v0, :cond_2

    .line 257
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_1

    .line 258
    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 259
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 276
    const v0, 0x1040161

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "rawRecentsComponent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->isNubiaLauncher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v0, "cn.nubia.launcher/com.android.quickstep.RecentsActivity"

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    return-void

    .line 286
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 287
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 289
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 290
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 291
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    .line 292
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 293
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_0

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load application info for recents component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 376
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 377
    .local v0, "preaddedTasks":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 378
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 381
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    goto :goto_0

    .line 383
    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading recents for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into memory."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 386
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 389
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 392
    :cond_3
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    return-void

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 429
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 430
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .locals 3
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 555
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 560
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 558
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .line 537
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 538
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 538
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 539
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 540
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 541
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v4, p2, :cond_1

    .line 544
    iput-boolean p2, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 545
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 546
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v7, "suspended-package"

    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 549
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 538
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 552
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    .line 465
    return-void
.end method

.method registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 341
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method remove(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1119
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1120
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1121
    nop

    .line 1122
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "taskPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1127
    .end local v1    # "taskPkgName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1128
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 567
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 567
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 568
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 569
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    nop

    .line 570
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p2, :cond_0

    .line 571
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_1

    .line 572
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 572
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_1

    .line 574
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v6, "remove-package-task"

    invoke-virtual {v4, v5, v1, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 567
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .locals 0
    .param p1, "globalMaxNumTasks"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 230
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 231
    return-void
.end method

.method setParameters(IIJ)V
    .locals 0
    .param p1, "minNumVisibleTasks"    # I
    .param p2, "maxNumVisibleTasks"    # I
    .param p3, "activeSessionDurationMs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 224
    iput p2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 225
    iput-wide p3, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 226
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 517
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 345
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 5

    .line 488
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 489
    .local v0, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 490
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 492
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    add-int/lit8 v4, v1, 0x1

    .local v4, "len":I
    aput v3, v0, v1

    .line 490
    .end local v1    # "len":I
    .end local v3    # "userId":I
    move v1, v4

    .end local v4    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 498
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    .line 500
    :cond_2
    return-object v0
.end method
