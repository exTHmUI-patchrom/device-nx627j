.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"

# interfaces
.implements Lcom/android/server/wm/TaskWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/am/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/am/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_IS_IN_BACK:Ljava/lang/String; = "task_in_back"

.field private static final ATTR_IS_IN_FRONT:Ljava/lang/String; = "task_in_front"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mIsInBack:Z

.field private mIsInFront:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mShouldShow:Z

.field private mStack:Lcom/android/server/am/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field private mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V
    .locals 17
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 322
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    .line 2531
    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    .line 2532
    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    .line 391
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 392
    iput v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 393
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 394
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 395
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 396
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 397
    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 398
    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 399
    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 400
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 401
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 402
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 403
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 404
    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 405
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 406
    move/from16 v13, p12

    iput v13, v0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 407
    move/from16 v14, p29

    iput-boolean v14, v0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 408
    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 410
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 411
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 412
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 413
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 414
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 415
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 416
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 417
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 418
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 419
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 420
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 421
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 422
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 423
    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 424
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 425
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 426
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 353
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 322
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    .line 2531
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    .line 2532
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    .line 354
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 355
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 356
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 358
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 359
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 360
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 361
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 363
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 364
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 365
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 366
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 368
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 370
    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 371
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 373
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 374
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 375
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 376
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 330
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 322
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mShouldShow:Z

    .line 2531
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    .line 2532
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    .line 331
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 332
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 333
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 335
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 336
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 337
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 338
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 340
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 341
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 342
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 343
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 345
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 346
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/TaskRecord;
    .param p1, "x1"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/TaskRecord;
    .param p1, "x1"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    return p1
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1686
    if-nez p1, :cond_0

    .line 1687
    return-void

    .line 1689
    :cond_0
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1690
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1694
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1695
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1696
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1698
    :cond_1
    if-ne v1, v2, :cond_2

    .line 1699
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1702
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1703
    .local v2, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_4

    move v3, v4

    nop

    .line 1704
    .local v3, "adjustHeight":Z
    :cond_4
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 1705
    return-void

    .line 1708
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1709
    .local v4, "configBounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_7

    .line 1710
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_6

    .line 1711
    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1715
    :cond_6
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1718
    :cond_7
    :goto_1
    if-eqz v3, :cond_9

    .line 1719
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_8

    .line 1720
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1724
    :cond_8
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1727
    :cond_9
    :goto_2
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1548
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 1552
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1553
    .local v1, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1554
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 1555
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1556
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 1555
    :cond_3
    move v0, v3

    goto :goto_3

    .line 1556
    :cond_4
    :goto_2
    nop

    .line 1555
    :goto_3
    return v0

    .line 1558
    :cond_5
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    nop

    :cond_8
    :goto_4
    return v0

    .line 1550
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    return v0
.end method

.method private closeRecentsChain()V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1005
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1006
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1007
    return-void
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2234
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2228
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2215
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/am/TaskRecord;->setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V

    .line 2218
    :cond_0
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method private isResizeable(Z)Z
    .locals 1
    .param p1, "checkSupportsPip"    # Z

    .line 1510
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 778
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2239
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 814
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 815
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_1

    .line 817
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_2

    .line 818
    return-void

    .line 821
    :cond_2
    :goto_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 828
    :cond_3
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 831
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 832
    if-eqz p1, :cond_5

    .line 836
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 837
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 838
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 839
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 843
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 844
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v0

    :goto_2
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 845
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3

    .line 847
    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_8

    .line 850
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 851
    .local v4, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 852
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 853
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 856
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 857
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 858
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 859
    .end local v4    # "targetIntent":Landroid/content/Intent;
    goto :goto_3

    .line 860
    :cond_8
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 861
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 862
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 866
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 867
    .local v0, "intentFlags":I
    :goto_4
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    .line 870
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 872
    :cond_a
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 873
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 875
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_c

    .line 877
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 878
    :cond_c
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_e

    .line 883
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_d

    .line 884
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 886
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    .line 889
    :cond_e
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 891
    :goto_6
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 892
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 893
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1479
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1480
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1481
    return-void

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1485
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    .line 1486
    .local v2, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1501
    :pswitch_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1502
    const/4 v0, 0x2

    nop

    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_1

    .line 1497
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1498
    goto :goto_1

    .line 1493
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1494
    goto :goto_1

    .line 1488
    :pswitch_3
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1489
    const/4 v0, 0x3

    nop

    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1490
    nop

    .line 1507
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 897
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 899
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_0

    .line 901
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 902
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 904
    :goto_0
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2222
    sput-object p0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2223
    return-void
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1202
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1223
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1224
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1232
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_2

    .line 1234
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1237
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_3

    .line 1243
    invoke-virtual {p2, v2}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1245
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setActivityType(I)V

    .line 1246
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 1247
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 1248
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1250
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1251
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    .line 1250
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    goto :goto_1

    .line 1254
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1257
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1259
    .local v1, "size":I
    if-ne p1, v1, :cond_5

    if-lez v1, :cond_5

    .line 1260
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1261
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_5

    .line 1264
    add-int/lit8 p1, p1, -0x1

    .line 1268
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1269
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1272
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1273
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1277
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1278
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    .line 1279
    .local v2, "appController":Lcom/android/server/wm/AppWindowContainerController;
    if-eqz v2, :cond_7

    .line 1282
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    .line 1287
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 1288
    return-void
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1206
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4
    .param p1, "taskSwitch"    # Z

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1918
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1919
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_0

    .line 1920
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1917
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1923
    .end local v0    # "activityNdx":I
    :cond_1
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 1

    .line 1353
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .line 1536
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v3

    .line 1536
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelWindowTransition()V

    .line 784
    return-void
.end method

.method clearAllPendingOptions()V
    .locals 3

    .line 1942
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1943
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1942
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1945
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1939
    :cond_0
    return-void
.end method

.method computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1736
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1737
    .local v0, "newOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p1, :cond_2

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1739
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1740
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1741
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    move-object v1, p0

    move-object v2, v0

    move-object v4, p2

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1745
    :cond_2
    return-object v0
.end method

.method computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 17
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "insetBounds"    # Landroid/graphics/Rect;
    .param p4, "overrideWidth"    # Z
    .param p5, "overrideHeight"    # Z

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1829
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1830
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->unset()V

    .line 1833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1835
    .local v14, "parentConfig":Landroid/content/res/Configuration;
    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float v15, v1, v2

    .line 1837
    .local v15, "density":F
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    .line 1838
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v16

    .line 1839
    .local v16, "stackController":Lcom/android/server/wm/StackWindowController;
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    .line 1839
    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v15

    move-object v9, v12

    move-object v10, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/StackWindowController;->adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V

    .line 1842
    .end local v16    # "stackController":Lcom/android/server/wm/StackWindowController;
    nop

    .line 1846
    iget v1, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v12, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v1, v2, :cond_0

    .line 1847
    const/4 v1, 0x1

    goto :goto_0

    .line 1848
    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1853
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-int v1, v1

    .line 1854
    .local v1, "compatScreenWidthDp":I
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-int v2, v2

    .line 1857
    .local v2, "compatScreenHeightDp":I
    const/16 v3, 0x24

    .line 1858
    .local v3, "sl":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1859
    .local v4, "longSize":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1860
    .local v5, "shortSize":I
    const/16 v6, 0x24

    invoke-static {v6, v4, v5}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    iput v6, v12, Landroid/content/res/Configuration;->screenLayout:I

    .line 1861
    return-void

    .line 1843
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "compatScreenHeightDp":I
    .end local v3    # "sl":I
    .end local v4    # "longSize":I
    .end local v5    # "shortSize":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected stack when calculating override config"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method createWindowContainer(ZZ)V
    .locals 13
    .param p1, "onTop"    # Z
    .param p2, "showForAllUsers"    # Z

    .line 433
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 439
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v12, Lcom/android/server/wm/TaskWindowContainerController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 440
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v11, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v1, v12

    move-object v3, p0

    move-object v6, v0

    move v9, p1

    move v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;)V

    .line 439
    invoke-virtual {p0, v12}, Lcom/android/server/am/TaskRecord;->setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V

    .line 443
    return-void

    .line 434
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1948
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1949
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1950
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1951
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1952
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1954
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1958
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 1956
    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_5

    .line 1962
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1964
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_6

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1969
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1976
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    .line 1982
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    .line 1986
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_b

    .line 1990
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1991
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1992
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1993
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1995
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 1997
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1998
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1999
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2000
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    :cond_d
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_11

    .line 2005
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2006
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2007
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_f

    .line 2009
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2011
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    :goto_2
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2014
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_10

    .line 2016
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 2018
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2020
    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_13

    .line 2024
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2025
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2026
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2028
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 2029
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2031
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 2032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2034
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1574
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1575
    .local v0, "realActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1576
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1577
    .local v2, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_0

    .line 1578
    goto :goto_1

    .line 1580
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1581
    return-object v2

    .line 1575
    .end local v2    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1584
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .line 1661
    const/4 v0, 0x0

    .line 1662
    .local v0, "effectiveNdx":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1663
    .local v1, "topActivityNdx":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 1664
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1665
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 1666
    goto :goto_1

    .line 1668
    :cond_0
    move v0, v2

    .line 1669
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_1

    .line 1670
    goto :goto_2

    .line 1663
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1673
    .end local v2    # "activityNdx":I
    :cond_2
    :goto_2
    return v0
.end method

.method public getActivityType()I
    .locals 3

    .line 1211
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1212
    .local v0, "applicationType":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    .line 1213
    :cond_1
    :goto_0
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1100
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1103
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_0

    .line 1104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1108
    .end local v0    # "activityNdx":I
    :cond_1
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p1, "index"    # I

    .line 983
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1901
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1902
    return-object v1

    .line 1905
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1906
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1910
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1911
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 1913
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 1909
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    :cond_4
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V
    .locals 4
    .param p1, "reportOut"    # Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 1129
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1131
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1132
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1133
    goto :goto_1

    .line 1136
    :cond_0
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    .line 1139
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1141
    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    :cond_1
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    .line 1145
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1147
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3

    .line 1149
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1130
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1152
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 1052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1054
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1055
    nop

    .line 1052
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v1

    .line 1059
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "reducedResolution"    # Z

    .line 793
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "includeOverlays"    # Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1069
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_0

    .line 1070
    goto :goto_1

    .line 1072
    :cond_0
    return-object v1

    .line 1067
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1074
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 576
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->getBounds(Landroid/graphics/Rect;)V

    .line 577
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method isClearingToReuseTask()Z
    .locals 1

    .line 1566
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isInScreen(I)Z
    .locals 1
    .param p1, "screenID"    # I

    .line 2541
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 1

    .line 1515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 911
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 915
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 916
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isVisible()Z
    .locals 4

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1091
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1092
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    .line 1093
    return v1

    .line 1090
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1096
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .line 1464
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1469
    :pswitch_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1468
    :pswitch_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1467
    :pswitch_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1466
    :pswitch_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1465
    :pswitch_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .line 1190
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAtTop(Lcom/android/server/wm/AppWindowContainerController;)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1198
    return-void
.end method

.method okToShowLocked()Z
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1157
    :goto_1
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1808
    .local v0, "parent":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 1809
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1811
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1815
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v0

    .line 1816
    .local v0, "wasInMultiWindowMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    .line 1821
    :cond_0
    return-void
.end method

.method protected onParentChanged()V
    .locals 1

    .line 993
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 994
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 995
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 472
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 473
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6
    .param p1, "excludeFinishing"    # Z

    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 1337
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1338
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 1339
    goto :goto_1

    .line 1341
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_1

    .line 1342
    return v3

    .line 1344
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1336
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1346
    .end local v1    # "i":I
    :cond_2
    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .locals 9
    .param p1, "activityNdx"    # I
    .param p2, "pauseImmediately"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1363
    .local v0, "numActivities":I
    :goto_0
    if-ge p1, v0, :cond_3

    .line 1364
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1365
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 1366
    goto :goto_1

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_1

    .line 1370
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 1371
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1372
    add-int/lit8 p1, p1, -0x1

    .line 1373
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1376
    add-int/lit8 p1, p1, -0x1

    .line 1377
    add-int/lit8 v0, v0, -0x1

    .line 1363
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1380
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1393
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1394
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1395
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1411
    .local v0, "numActivities":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "activityNdx":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_8

    .line 1412
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1413
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 1414
    goto :goto_3

    .line 1416
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1418
    move-object v4, v3

    .line 1420
    .local v4, "ret":Lcom/android/server/am/ActivityRecord;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_4

    .line 1421
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1422
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1423
    goto :goto_2

    .line 1425
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1426
    .local v5, "opts":Landroid/app/ActivityOptions;
    if-eqz v5, :cond_2

    .line 1427
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1429
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "clear-task-stack"

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1431
    add-int/lit8 v1, v1, -0x1

    .line 1432
    add-int/lit8 v0, v0, -0x1

    .line 1420
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    :goto_2
    goto :goto_1

    .line 1439
    :cond_4
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v5, :cond_6

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_6

    .line 1441
    invoke-static {p2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1442
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_6

    .line 1443
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_5

    .line 1444
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "clear-task-top"

    const/4 v10, 0x0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1447
    :cond_5
    return-object v2

    .line 1451
    :cond_6
    return-object v4

    .line 1411
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1455
    .end local v1    # "activityNdx":I
    :cond_8
    return-object v2
.end method

.method performClearTaskLocked()V
    .locals 2

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1387
    const-string v0, "clear-task-all"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1388
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1389
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reparenting"    # Z

    .line 1300
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 1309
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1315
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1325
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1326
    return v1

    .line 1301
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .locals 1
    .param p1, "pauseImmediately"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1461
    return-void
.end method

.method removeWindowContainer()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 460
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->removeContainer()V

    .line 461
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 467
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 468
    return-void
.end method

.method removedFromRecents()V
    .locals 3

    .line 1010
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1013
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1019
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1020
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZLjava/lang/String;)Z
    .locals 8
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 604
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z
    .locals 27
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 630
    move-object/from16 v13, p7

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 631
    .local v14, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 632
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 633
    .local v12, "sourceStack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    invoke-virtual {v14, v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 635
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    if-ne v7, v12, :cond_1

    .line 636
    return v8

    .line 638
    :cond_1
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    return v8

    .line 642
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 643
    .local v11, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 645
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_3

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/server/am/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    goto :goto_1

    :cond_3
    move v0, v8

    :goto_1
    move/from16 v16, v0

    .line 647
    .local v16, "mightReplaceWindow":Z
    if-eqz v16, :cond_4

    .line 656
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v15, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 659
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 660
    move/from16 v17, v9

    .line 662
    .local v17, "kept":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v18, v0

    .line 663
    .local v18, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, v18

    if-eqz v8, :cond_5

    .end local v18    # "r":Lcom/android/server/am/ActivityRecord;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    :try_start_1
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v8, :cond_5

    move v0, v9

    goto :goto_2

    .line 747
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    goto/16 :goto_1b

    .line 664
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v0, 0x0

    :goto_2
    move/from16 v18, v0

    .line 665
    .local v18, "wasFocused":Z
    if-eqz v8, :cond_6

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v8, :cond_6

    move v0, v9

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move-object/from16 v19, v10

    move v10, v0

    .line 666
    .local v10, "wasResumed":Z
    .local v19, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_7

    :try_start_2
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v8, :cond_7

    move v0, v9

    goto :goto_4

    .line 747
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v18    # "wasFocused":Z
    :catchall_1
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move v8, v11

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    goto/16 :goto_1b

    .line 666
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v18    # "wasFocused":Z
    :cond_7
    const/4 v0, 0x0

    :goto_4
    move/from16 v20, v11

    move v11, v0

    .line 671
    .local v11, "wasPaused":Z
    .local v20, "toStackWindowingMode":I
    if-eqz v8, :cond_8

    :try_start_3
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 672
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v8, :cond_8

    move v0, v9

    goto :goto_5

    .line 747
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    :catchall_2
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_1b

    .line 672
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    :cond_8
    const/4 v0, 0x0

    :goto_5
    move/from16 v21, v0

    .line 675
    .local v21, "wasFront":Z
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v1, v3, v9}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move v3, v0

    .line 679
    .end local p2    # "position":I
    .local v3, "position":I
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-nez v4, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    :try_start_6
    invoke-virtual {v0, v9, v3, v2}, Lcom/android/server/wm/TaskWindowContainerController;->reparent(Lcom/android/server/wm/StackWindowController;IZ)V

    .line 682
    if-eqz v4, :cond_b

    const/4 v2, 0x1

    if-ne v4, v2, :cond_a

    if-nez v18, :cond_c

    if-eqz v21, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    const/4 v2, 0x1

    :cond_c
    :goto_7
    move v0, v2

    :goto_8
    move/from16 v22, v0

    .line 685
    .local v22, "moveStackToFront":Z
    if-eqz v22, :cond_d

    .line 686
    nop

    .line 685
    const/4 v0, 0x2

    goto :goto_9

    .line 686
    :cond_d
    nop

    .line 685
    move v0, v2

    :goto_9
    invoke-virtual {v12, v1, v13, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 687
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v3, v2, v13}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 689
    if-eqz p6, :cond_e

    .line 691
    :try_start_7
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_d

    .line 747
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    :catchall_3
    move-exception v0

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    .end local v3    # "position":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .local v2, "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v8, "toStackWindowingMode":I
    .local v23, "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v25, "position":I
    :goto_a
    move-object/from16 v7, v19

    :goto_b
    move/from16 v8, v20

    :goto_c
    move-object/from16 v5, p1

    goto/16 :goto_1b

    .line 696
    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .restart local v3    # "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    :cond_e
    :goto_d
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v0, :cond_f

    .line 698
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v9, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v2, v9}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 700
    goto :goto_e

    .line 699
    :catch_0
    move-exception v0

    .line 705
    :cond_f
    :goto_e
    if-eqz v8, :cond_10

    .line 706
    move-object v2, v7

    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v24, v8

    const/4 v9, 0x0

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .local v24, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v25, v3

    const/4 v3, 0x1

    move/from16 v9, v22

    .end local v3    # "position":I
    .restart local v25    # "position":I
    move-object/from16 v23, v12

    move-object v12, v13

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :try_start_a
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_f

    .line 747
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v0

    goto :goto_a

    .line 709
    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .restart local v3    # "position":I
    .restart local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "wasFocused":Z
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    :cond_10
    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v12

    const/4 v3, 0x1

    .end local v3    # "position":I
    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v24    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "position":I
    :goto_f
    if-nez v5, :cond_11

    .line 710
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v7, v19

    :try_start_c
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_10

    .line 747
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_5
    move-exception v0

    goto :goto_b

    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v0

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, p1

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1b

    .line 715
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    .restart local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_11
    move-object/from16 v7, v19

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_10
    :try_start_d
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 718
    const/4 v0, 0x3

    move/from16 v8, v20

    if-ne v8, v0, :cond_12

    .end local v20    # "toStackWindowingMode":I
    .local v8, "toStackWindowingMode":I
    move v0, v3

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    .line 720
    .local v0, "toStackSplitScreenPrimary":Z
    :goto_11
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 721
    .local v9, "configBounds":Landroid/graphics/Rect;
    if-eq v8, v3, :cond_13

    const/4 v12, 0x4

    if-ne v8, v12, :cond_15

    .line 723
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 724
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v16, :cond_14

    goto :goto_12

    :cond_14
    const/4 v3, 0x0

    :goto_12
    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5, v3, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_16

    .line 726
    :cond_15
    const/4 v3, 0x5

    if-ne v8, v3, :cond_17

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 731
    .local v3, "bounds":Landroid/graphics/Rect;
    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 732
    move-object v3, v9

    .line 736
    if-nez v16, :cond_16

    const/4 v5, 0x1

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    const/4 v12, 0x2

    invoke-virtual {v1, v3, v12, v5, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v5

    move/from16 v17, v5

    .line 737
    .end local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_16

    :cond_17
    const/4 v12, 0x2

    if-nez v0, :cond_18

    if-ne v8, v12, :cond_1c

    .line 738
    :cond_18
    if-eqz v0, :cond_19

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 741
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V

    goto :goto_14

    .line 743
    :cond_19
    const/4 v5, 0x1

    :cond_1a
    :goto_14
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v16, :cond_1b

    move v12, v5

    goto :goto_15

    :cond_1b
    const/4 v12, 0x0

    :goto_15
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v12, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move/from16 v17, v3

    .line 747
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v9    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    :goto_16
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 748
    nop

    .line 750
    if-eqz v16, :cond_1e

    .line 754
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v17, :cond_1d

    const/4 v3, 0x1

    goto :goto_17

    :cond_1d
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v15, v0, v3}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 757
    :cond_1e
    if-nez v6, :cond_20

    .line 760
    if-nez v16, :cond_1f

    const/4 v0, 0x1

    goto :goto_18

    :cond_1f
    const/4 v0, 0x0

    :goto_18
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 761
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_19

    .line 765
    :cond_20
    const/4 v3, 0x0

    :goto_19
    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {v14, v1, v0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 768
    if-ne v5, v2, :cond_21

    const/4 v3, 0x1

    nop

    :cond_21
    return v3

    .line 747
    :catchall_7
    move-exception v0

    goto/16 :goto_c

    .end local v8    # "toStackWindowingMode":I
    .restart local v20    # "toStackWindowingMode":I
    :catchall_8
    move-exception v0

    move/from16 v8, v20

    move-object/from16 v5, p1

    .end local v20    # "toStackWindowingMode":I
    .restart local v8    # "toStackWindowingMode":I
    goto :goto_1b

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .local v3, "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    :catchall_9
    move-exception v0

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, p1

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    .end local v3    # "position":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v25    # "position":I
    :goto_1a
    goto :goto_1b

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local p2    # "position":I
    :catchall_b
    move-exception v0

    move-object v5, v2

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v25, v3

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1b

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v11, "toStackWindowingMode":I
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :catchall_c
    move-exception v0

    move-object v5, v2

    move-object v2, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    move/from16 v25, v3

    .end local v10    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "toStackWindowingMode":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local p2    # "position":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v25    # "position":I
    :goto_1b
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z
    .locals 9
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 585
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    .locals 9
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 596
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 492
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 493
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z
    .param p4, "deferResume"    # Z

    .line 496
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 500
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    nop

    .line 566
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 501
    return v1

    .line 506
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 507
    .local v0, "forced":Z
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 509
    nop

    .line 566
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 509
    return v1

    .line 512
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v3, :cond_4

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 517
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    :cond_3
    nop

    .line 566
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 521
    return v1

    .line 524
    :cond_4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v3

    .line 541
    .local v3, "updatedConfig":Z
    const/4 v6, 0x1

    .line 542
    .local v6, "kept":Z
    if-eqz v3, :cond_5

    .line 543
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 544
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_5

    if-nez p4, :cond_5

    .line 545
    invoke-virtual {v7, v2, p3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    move v6, v8

    .line 547
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 549
    if-nez v6, :cond_5

    .line 550
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 554
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 556
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 557
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 558
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    nop

    .line 559
    .local v1, "isPort":Z
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Lcom/android/server/am/ActivityManagerService;->saveCurrentRect(ZLandroid/graphics/Rect;)V

    .line 563
    .end local v1    # "isPort":Z
    .end local v7    # "display":Landroid/view/Display;
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    nop

    .line 566
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 564
    return v6

    .line 525
    .end local v3    # "updatedConfig":Z
    .end local v6    # "kept":Z
    :cond_9
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 566
    .end local v0    # "forced":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 573
    return-void
.end method

.method returnsToHomeStack()Z
    .locals 3

    .line 920
    const v0, 0x10004000

    .line 921
    .local v0, "returnHomeFlags":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2130
    const-string/jumbo v0, "task_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2131
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2132
    const-string/jumbo v0, "real_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2134
    :cond_0
    const-string/jumbo v0, "real_activity_suspended"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2135
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 2136
    const-string/jumbo v0, "orig_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2142
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2143
    const-string v0, "affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2144
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2145
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "@"

    :goto_0
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2147
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2148
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "@"

    :goto_1
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2150
    :cond_5
    :goto_2
    const-string/jumbo v0, "root_has_reset"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2151
    const-string v0, "auto_remove_recents"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2152
    const-string v0, "asked_compat_mode"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2153
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2154
    const-string/jumbo v0, "user_setup_complete"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2155
    const-string v0, "effective_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2156
    const-string/jumbo v0, "last_time_moved"

    iget-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2157
    const-string/jumbo v0, "never_relinquish_identity"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 2159
    const-string/jumbo v0, "last_description"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2161
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    .line 2162
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2164
    :cond_7
    const-string/jumbo v0, "task_affiliation_color"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2165
    const-string/jumbo v0, "task_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    const-string/jumbo v0, "prev_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2167
    const-string/jumbo v0, "next_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2168
    const-string v0, "calling_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2169
    const-string v0, "calling_package"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    :goto_3
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    const-string/jumbo v0, "resize_mode"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    const-string/jumbo v0, "supports_picture_in_picture"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2172
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2171
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    .line 2174
    const-string/jumbo v0, "non_fullscreen_bounds"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2175
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 2174
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2177
    :cond_9
    const-string/jumbo v0, "min_width"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2178
    const-string/jumbo v0, "min_height"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2179
    const-string/jumbo v0, "persist_task_version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    const-string/jumbo v0, "task_in_front"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2182
    const-string/jumbo v0, "task_in_back"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2184
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 2185
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2186
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2187
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2190
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 2191
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2192
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2193
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2196
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2197
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2198
    .local v1, "numActivities":I
    const/4 v3, 0x0

    .line 2198
    .local v3, "activityNdx":I
    :goto_4
    if-ge v3, v1, :cond_d

    .line 2199
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2200
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2201
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_c

    if-lez v3, :cond_c

    .line 2205
    goto :goto_5

    .line 2207
    :cond_c
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2209
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2211
    .end local v3    # "activityNdx":I
    :cond_d
    :goto_5
    return-void
.end method

.method final setFrontOfTask()V
    .locals 7

    .line 1163
    const/4 v0, 0x0

    .line 1164
    .local v0, "foundFront":Z
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1165
    .local v1, "numActivities":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "activityNdx":I
    .local v3, "foundFront":Z
    :goto_0
    const/4 v4, 0x1

    if-ge v0, v1, :cond_2

    .line 1166
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1167
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_1

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1170
    :cond_0
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1172
    const/4 v3, 0x1

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 1168
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1165
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    .end local v0    # "activityNdx":I
    :cond_2
    if-nez v3, :cond_3

    if-lez v1, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1180
    :cond_3
    return-void
.end method

.method setInScreen(I)V
    .locals 1
    .param p1, "screenID"    # I

    .line 2534
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2535
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsInFront:Z

    goto :goto_0

    .line 2537
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsInBack:Z

    .line 2539
    :goto_0
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 806
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 807
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 808
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 810
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 1476
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 930
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 931
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 932
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 925
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 926
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 927
    return-void
.end method

.method setResizeMode(I)V
    .locals 3
    .param p1, "resizeMode"    # I

    .line 476
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 480
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setResizeable(I)V

    .line 481
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 482
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 483
    return-void
.end method

.method setRootProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1927
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1928
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1929
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1930
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_0
    return-void
.end method

.method setStack(Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 943
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 947
    .local v0, "oldStack":Lcom/android/server/am/ActivityStack;
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 952
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_4

    .line 953
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 954
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 956
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 960
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_3

    .line 961
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    .line 953
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 966
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->onParentChanged()V

    .line 967
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDockedResizing(Z)V

    .line 487
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .line 1023
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1024
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1025
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1027
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1028
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1029
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    .line 1030
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " affilTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_0

    .line 1033
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1035
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1036
    goto :goto_1

    .line 1038
    :cond_1
    move-object p1, v0

    .line 1039
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 1040
    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1042
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1043
    return-void
.end method

.method protected setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/server/wm/TaskWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_0

    .line 455
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 456
    return-void

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 1522
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_0

    .line 1525
    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 1526
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    nop

    .line 1522
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2046
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2050
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2052
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2054
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2057
    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2061
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2062
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2064
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 2065
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2067
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2068
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2071
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1081
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    return-object v1

    .line 1079
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1086
    .end local v0    # "activityNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1113
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1114
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 1115
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1116
    goto :goto_1

    .line 1118
    :cond_0
    return-object v2

    .line 1112
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1121
    .end local v0    # "activityNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .locals 2

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 798
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 2

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1678
    .local v0, "effectiveRootIndex":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1679
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateTaskDescription()V

    .line 1683
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1754
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 12
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1767
    return v1

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1771
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1774
    .local v2, "newConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    move v10, v4

    .line 1775
    .local v10, "matchParentBounds":Z
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v11

    .line 1776
    .local v11, "persistBounds":Z
    if-eqz v10, :cond_4

    .line 1777
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v11, :cond_3

    .line 1778
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1780
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1781
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    goto :goto_4

    .line 1783
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1784
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1785
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1787
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_5

    if-eqz v11, :cond_6

    .line 1788
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1790
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-eq v4, v5, :cond_7

    move v8, v3

    goto :goto_2

    :cond_7
    move v8, v1

    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v5, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    move v9, v1

    :goto_3
    move-object v4, p0

    move-object v5, v2

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1793
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1794
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .line 1877
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_0

    .line 1878
    return-void

    .line 1881
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1887
    return-void

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1890
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1892
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 1883
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1895
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1897
    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1865
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1866
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1871
    :cond_0
    return-object v0
.end method

.method updateTaskDescription()V
    .locals 22

    .line 1592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1593
    .local v1, "numActivities":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1594
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_0

    move v2, v3

    nop

    .line 1595
    .local v2, "relinquish":Z
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "activityNdx":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1597
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1598
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_1

    .line 1601
    add-int/lit8 v3, v3, 0x1

    .line 1602
    goto :goto_1

    .line 1604
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1605
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 1606
    goto :goto_1

    .line 1596
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1609
    :cond_3
    :goto_1
    if-lez v3, :cond_c

    .line 1614
    const/4 v4, 0x0

    .line 1615
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1616
    .local v5, "iconFilename":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1617
    .local v6, "iconResource":I
    const/4 v7, 0x0

    .line 1618
    .local v7, "colorPrimary":I
    const/4 v8, 0x0

    .line 1619
    .local v8, "colorBackground":I
    const/4 v9, 0x0

    .line 1620
    .local v9, "statusBarColor":I
    const/4 v10, 0x0

    .line 1621
    .local v10, "navigationBarColor":I
    const/4 v11, 0x1

    .line 1622
    .local v11, "topActivity":Z
    add-int/lit8 v3, v3, -0x1

    move-object v13, v4

    move-object v15, v5

    move v14, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iconFilename":Ljava/lang/String;
    .end local v6    # "iconResource":I
    .end local v7    # "colorPrimary":I
    .end local v8    # "colorBackground":I
    .end local v9    # "statusBarColor":I
    .end local v10    # "navigationBarColor":I
    .end local v11    # "topActivity":Z
    .local v13, "label":Ljava/lang/String;
    .local v14, "iconResource":I
    .local v15, "iconFilename":Ljava/lang/String;
    .local v16, "colorPrimary":I
    .local v17, "colorBackground":I
    .local v18, "statusBarColor":I
    .local v19, "navigationBarColor":I
    .local v20, "topActivity":Z
    :goto_2
    if-ltz v3, :cond_a

    .line 1623
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1624
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_4

    .line 1625
    goto :goto_3

    .line 1627
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_9

    .line 1628
    if-nez v13, :cond_5

    .line 1629
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 1631
    .end local v13    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    move-object v13, v5

    .end local v5    # "label":Ljava/lang/String;
    .restart local v13    # "label":Ljava/lang/String;
    :cond_5
    const/4 v5, -0x1

    if-ne v14, v5, :cond_6

    .line 1632
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v5

    .line 1634
    .end local v14    # "iconResource":I
    .local v5, "iconResource":I
    move v14, v5

    .end local v5    # "iconResource":I
    .restart local v14    # "iconResource":I
    :cond_6
    if-nez v15, :cond_7

    .line 1635
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    .line 1637
    .end local v15    # "iconFilename":Ljava/lang/String;
    .local v5, "iconFilename":Ljava/lang/String;
    move-object v15, v5

    .end local v5    # "iconFilename":Ljava/lang/String;
    .restart local v15    # "iconFilename":Ljava/lang/String;
    :cond_7
    if-nez v16, :cond_8

    .line 1638
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 1640
    .end local v16    # "colorPrimary":I
    .local v5, "colorPrimary":I
    move/from16 v16, v5

    .end local v5    # "colorPrimary":I
    .restart local v16    # "colorPrimary":I
    :cond_8
    if-eqz v20, :cond_9

    .line 1641
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v17

    .line 1642
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v18

    .line 1643
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v19

    .line 1646
    :cond_9
    const/4 v4, 0x0

    .line 1622
    .end local v20    # "topActivity":Z
    .local v4, "topActivity":Z
    move/from16 v20, v4

    .end local v4    # "topActivity":Z
    .restart local v20    # "topActivity":Z
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1648
    :cond_a
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v12

    move-object v5, v13

    move v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v21, v1

    move-object v1, v12

    move/from16 v12, v19

    .end local v1    # "numActivities":I
    .local v21, "numActivities":I
    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1650
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_b

    .line 1651
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1654
    :cond_b
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_d

    .line 1655
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .end local v13    # "label":Ljava/lang/String;
    .end local v14    # "iconResource":I
    .end local v15    # "iconFilename":Ljava/lang/String;
    .end local v16    # "colorPrimary":I
    .end local v17    # "colorBackground":I
    .end local v18    # "statusBarColor":I
    .end local v19    # "navigationBarColor":I
    .end local v20    # "topActivity":Z
    goto :goto_4

    .line 1658
    .end local v21    # "numActivities":I
    .restart local v1    # "numActivities":I
    :cond_c
    move/from16 v21, v1

    .end local v1    # "numActivities":I
    .restart local v21    # "numActivities":I
    :cond_d
    :goto_4
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2078
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2079
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2080
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2081
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2082
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2083
    .local v3, "activity":Lcom/android/server/am/ActivityRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2081
    .end local v3    # "activity":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2085
    .end local v2    # "i":I
    :cond_0
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2086
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 2087
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2089
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 2090
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2092
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    .line 2093
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2095
    :cond_3
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2096
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2098
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2102
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2104
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_4
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2105
    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2106
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2107
    return-void
.end method
