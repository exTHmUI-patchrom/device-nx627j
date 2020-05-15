.class public Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;
.super Ljava/lang/Object;
.source "ActivityTimeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityTimeLockHelper;
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

    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCaller:Landroid/app/IApplicationThread;

    .line 574
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCallingUid:I

    .line 575
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mCallingPackage:Ljava/lang/String;

    .line 576
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    .line 577
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResolvedType:Ljava/lang/String;

    .line 578
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 579
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 580
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResultTo:Landroid/os/IBinder;

    .line 581
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mResultWho:Ljava/lang/String;

    .line 582
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mRequestCode:I

    .line 583
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mStartFlags:I

    .line 584
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 585
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mOutResult:Landroid/app/WaitResult;

    .line 586
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mConfig:Landroid/content/res/Configuration;

    .line 587
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 588
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mUserId:I

    .line 589
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mIcontainer:Ljava/lang/Object;

    .line 590
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/ActivityTimeLockHelper$StartIntentInfo;->mToken:J

    .line 592
    return-void
.end method
