.class public Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartIntentInfo"
.end annotation


# instance fields
.field public mCaller:Landroid/app/IApplicationThread;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mConfig:Landroid/content/res/Configuration;

.field public mIcontainer:Ljava/lang/Object;

.field public mInTask:Lcom/android/server/am/TaskRecord;

.field public mIntent:Landroid/content/Intent;

.field public mOptions:Lcom/android/server/am/SafeActivityOptions;

.field public mOutResult:Landroid/app/WaitResult;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public mRequestCode:I

.field public mResolvedType:Ljava/lang/String;

.field public mResultTo:Landroid/os/IBinder;

.field public mResultWho:Ljava/lang/String;

.field public mStartFlags:I

.field public mToken:J

.field public mUserId:I

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;)V
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Ljava/lang/Object;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    .line 535
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 537
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingUid:I

    .line 538
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 539
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 540
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 541
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 542
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 543
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 544
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 545
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mRequestCode:I

    .line 546
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mStartFlags:I

    .line 547
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 548
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOutResult:Landroid/app/WaitResult;

    .line 549
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 550
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 551
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mUserId:I

    .line 552
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIcontainer:Ljava/lang/Object;

    .line 553
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mToken:J

    .line 555
    return-void
.end method
