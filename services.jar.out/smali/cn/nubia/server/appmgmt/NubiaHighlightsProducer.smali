.class public Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
.super Ljava/lang/Object;
.source "NubiaHighlightsProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
    }
.end annotation


# static fields
.field private static final INDEX_BLZY:I = 0x3

.field private static final INDEX_CJZC:I = 0x0

.field private static final INDEX_PUBG:I = 0x2

.field private static final INDEX_PUBG_LITE:I = 0x4

.field private static final INDEX_WZRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NubiaHighlightsProducer"

.field private static mGameActivitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGamePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MSG_CHECK_RECORD_ACTIVITY:I

.field private final MSG_DELAY_TIME:I

.field private brReceiver:Landroid/content/BroadcastReceiver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlzyKillEndX:I

.field private mBlzyKillEndY:I

.field private mBlzyKillHeight:I

.field private mBlzyKillWidth:I

.field private mBlzyKillX:I

.field private mBlzyKillY:I

.field private mBlzyOverEndX:I

.field private mBlzyOverEndY:I

.field private mBlzyOverHeight:I

.field private mBlzyOverWidth:I

.field private mBlzyOverX:I

.field private mBlzyOverY:I

.field private mBlzyRecordEndX:I

.field private mBlzyRecordEndY:I

.field private mBlzyRecordHeight:I

.field private mBlzyRecordWidth:I

.field private mBlzyRecordX:I

.field private mBlzyRecordY:I

.field private mBlzyVictoryEndX:I

.field private mBlzyVictoryEndY:I

.field private mBlzyVictoryHeight:I

.field private mBlzyVictoryWidth:I

.field private mBlzyVictoryX:I

.field private mBlzyVictoryY:I

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnubia/os/ITaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckRecordActivityRunnable:Ljava/lang/Runnable;

.field private mCjzcErrorEndX:I

.field private mCjzcErrorEndY:I

.field private mCjzcErrorHeight:I

.field private mCjzcErrorWidth:I

.field private mCjzcErrorX:I

.field private mCjzcErrorY:I

.field private mCjzcKillEndX:I

.field private mCjzcKillEndY:I

.field private mCjzcKillHeight:I

.field private mCjzcKillTwoEndX:I

.field private mCjzcKillTwoEndY:I

.field private mCjzcKillTwoHeight:I

.field private mCjzcKillTwoWidth:I

.field private mCjzcKillTwoX:I

.field private mCjzcKillTwoY:I

.field private mCjzcKillWidth:I

.field private mCjzcKillX:I

.field private mCjzcKillY:I

.field private mCjzcOverEndX:I

.field private mCjzcOverEndY:I

.field private mCjzcOverHeight:I

.field private mCjzcOverThreeEndX:I

.field private mCjzcOverThreeEndY:I

.field private mCjzcOverThreeHeight:I

.field private mCjzcOverThreeWidth:I

.field private mCjzcOverThreeX:I

.field private mCjzcOverThreeY:I

.field private mCjzcOverTwoEndX:I

.field private mCjzcOverTwoEndY:I

.field private mCjzcOverTwoHeight:I

.field private mCjzcOverTwoWidth:I

.field private mCjzcOverTwoX:I

.field private mCjzcOverTwoY:I

.field private mCjzcOverWidth:I

.field private mCjzcOverX:I

.field private mCjzcOverY:I

.field private mCjzcRecordEndX:I

.field private mCjzcRecordEndY:I

.field private mCjzcRecordHeight:I

.field private mCjzcRecordWidth:I

.field private mCjzcRecordX:I

.field private mCjzcRecordY:I

.field private mCmpName:Landroid/content/ComponentName;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private mDisplayDefferX:I

.field private mDisplayHeight:I

.field private mDisplayMeanX:I

.field private mDisplayWidth:I

.field private mDumpDebugLog:Z

.field private mEngCjzcErrorEndX:I

.field private mEngCjzcErrorEndY:I

.field private mEngCjzcErrorHeight:I

.field private mEngCjzcErrorWidth:I

.field private mEngCjzcErrorX:I

.field private mEngCjzcErrorY:I

.field private mEngCjzcOverEndX:I

.field private mEngCjzcOverEndY:I

.field private mEngCjzcOverHeight:I

.field private mEngCjzcOverThreeEndX:I

.field private mEngCjzcOverThreeEndY:I

.field private mEngCjzcOverThreeHeight:I

.field private mEngCjzcOverThreeWidth:I

.field private mEngCjzcOverThreeX:I

.field private mEngCjzcOverThreeY:I

.field private mEngCjzcOverTwoEndX:I

.field private mEngCjzcOverTwoEndY:I

.field private mEngCjzcOverTwoHeight:I

.field private mEngCjzcOverTwoWidth:I

.field private mEngCjzcOverTwoX:I

.field private mEngCjzcOverTwoY:I

.field private mEngCjzcOverWidth:I

.field private mEngCjzcOverX:I

.field private mEngCjzcOverY:I

.field private mGameType:I

.field private mHandler:Landroid/os/Handler;

.field private mHighlightsAppPid:I

.field private mHighlightsAppProcessName:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentString:Ljava/lang/String;

.field private mIsStartBLZY:Z

.field private mIsStartCJZC:Z

.field private mIsStartEngCJZC:Z

.field private mIsStartScreenRecord:Z

.field private mIsStartWZRY:Z

.field private mPkgCoordinateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgCoordinateMapKey:Ljava/lang/String;

.field public mReadTextRunnable:Ljava/lang/Runnable;

.field private mRunPackageName:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWzryAssistEndX:I

.field private mWzryAssistEndY:I

.field private mWzryAssistHeight:I

.field private mWzryAssistTwoEndX:I

.field private mWzryAssistTwoEndY:I

.field private mWzryAssistTwoHeight:I

.field private mWzryAssistTwoWidth:I

.field private mWzryAssistTwoX:I

.field private mWzryAssistTwoY:I

.field private mWzryAssistWidth:I

.field private mWzryAssistX:I

.field private mWzryAssistY:I

.field private mWzryDieEndX:I

.field private mWzryDieEndY:I

.field private mWzryDieHeight:I

.field private mWzryDieTwoEndX:I

.field private mWzryDieTwoEndY:I

.field private mWzryDieTwoHeight:I

.field private mWzryDieTwoWidth:I

.field private mWzryDieTwoX:I

.field private mWzryDieTwoY:I

.field private mWzryDieWidth:I

.field private mWzryDieX:I

.field private mWzryDieY:I

.field private mWzryErrorEndX:I

.field private mWzryErrorEndY:I

.field private mWzryErrorHeight:I

.field private mWzryErrorWidth:I

.field private mWzryErrorX:I

.field private mWzryErrorY:I

.field private mWzryKillEndX:I

.field private mWzryKillEndY:I

.field private mWzryKillHeight:I

.field private mWzryKillTwoEndX:I

.field private mWzryKillTwoEndY:I

.field private mWzryKillTwoHeight:I

.field private mWzryKillTwoWidth:I

.field private mWzryKillTwoX:I

.field private mWzryKillTwoY:I

.field private mWzryKillWidth:I

.field private mWzryKillX:I

.field private mWzryKillY:I

.field private mWzryOverEndX:I

.field private mWzryOverEndY:I

.field private mWzryOverHeight:I

.field private mWzryOverWidth:I

.field private mWzryOverX:I

.field private mWzryOverY:I

.field private mWzryRecordEndX:I

.field private mWzryRecordEndY:I

.field private mWzryRecordHeight:I

.field private mWzryRecordTwoEndX:I

.field private mWzryRecordTwoEndY:I

.field private mWzryRecordTwoHeight:I

.field private mWzryRecordTwoWidth:I

.field private mWzryRecordTwoX:I

.field private mWzryRecordTwoY:I

.field private mWzryRecordWidth:I

.field private mWzryRecordX:I

.field private mWzryRecordY:I

.field private mWzryToastEndX:I

.field private mWzryToastEndY:I

.field private mWzryToastHeight:I

.field private mWzryToastWidth:I

.field private mWzryToastX:I

.field private mWzryToastY:I

.field private mWzryVictoryEndX:I

.field private mWzryVictoryEndY:I

.field private mWzryVictoryHeight:I

.field private mWzryVictoryWidth:I

.field private mWzryVictoryX:I

.field private mWzryVictoryY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    .line 296
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const-string v1, "com.epicgames.fortnite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const-string v1, "com.tencent.iglite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    .line 304
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    const-string v1, "com.epicgames.ue4.GameActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame.SGameActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    const-string v1, "com.epicgames.ue4.GameActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    const-string v1, "com.epicgames.ue4.GameActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "cn.nubia.gamehighlights.redmagictime"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIntentAction:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "redMagicMap"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIntentString:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "packageName"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMapKey:Ljava/lang/String;

    .line 48
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.gamehighlights"

    const-string v3, "cn.nubia.gamehighlights.Activity.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCmpName:Landroid/content/ComponentName;

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->MSG_CHECK_RECORD_ACTIVITY:I

    .line 68
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppPid:I

    .line 69
    const-string v0, "cn.nubia.gamehighlights"

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppProcessName:Ljava/lang/String;

    .line 71
    const/16 v0, 0x7d0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->MSG_DELAY_TIME:I

    .line 73
    const/16 v0, 0x870

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDefaultWidth:I

    .line 74
    const/16 v2, 0x438

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDefaultHeight:I

    .line 76
    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 77
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    .line 79
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 80
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 88
    const/16 v0, 0x37a

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordX:I

    .line 89
    const/16 v0, 0x3f2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordY:I

    .line 90
    const/16 v3, 0x52a

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndX:I

    .line 91
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndY:I

    .line 92
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordX:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordWidth:I

    .line 93
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordY:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordHeight:I

    .line 102
    const/16 v2, 0x320

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillX:I

    .line 103
    const/16 v2, 0x159

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillY:I

    .line 104
    const/16 v3, 0x514

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndX:I

    .line 105
    const/16 v3, 0x17f

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndY:I

    .line 106
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillWidth:I

    .line 107
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillHeight:I

    .line 109
    const/16 v3, 0x792

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverX:I

    .line 110
    const/4 v3, 0x3

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverY:I

    .line 111
    const/16 v3, 0x866

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndX:I

    .line 112
    const/16 v3, 0x3b

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndY:I

    .line 113
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverWidth:I

    .line 114
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverHeight:I

    .line 116
    const/16 v3, 0x3dc

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryX:I

    .line 117
    const/16 v3, 0x35f

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryY:I

    .line 118
    const/16 v3, 0x4b7

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndX:I

    .line 119
    const/16 v3, 0x3b6

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndY:I

    .line 120
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryWidth:I

    .line 121
    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryHeight:I

    .line 124
    const/16 v3, 0xa

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordX:I

    .line 125
    const/16 v3, 0x40b

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordY:I

    .line 126
    const/16 v3, 0xa5

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndX:I

    .line 127
    const/16 v3, 0x42e

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndY:I

    .line 128
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordWidth:I

    .line 129
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordHeight:I

    .line 131
    const/16 v4, 0x2d

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorX:I

    .line 132
    const/16 v4, 0x2ca

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorY:I

    .line 133
    const/16 v4, 0xc8

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndX:I

    .line 134
    const/16 v4, 0x2e6

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndY:I

    .line 135
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorWidth:I

    .line 136
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorHeight:I

    .line 138
    const/16 v4, 0x28

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorX:I

    .line 139
    const/16 v4, 0x2cb

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorY:I

    .line 140
    const/16 v4, 0xa0

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndX:I

    .line 141
    const/16 v4, 0x2e9

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndY:I

    .line 142
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorWidth:I

    .line 143
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorHeight:I

    .line 145
    const/16 v4, 0x28a

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillX:I

    .line 146
    const/16 v4, 0x136

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillY:I

    .line 147
    const/16 v4, 0x528

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndX:I

    .line 148
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndY:I

    .line 149
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillX:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillWidth:I

    .line 150
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillY:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillHeight:I

    .line 152
    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoX:I

    .line 153
    const/16 v0, 0x102

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoY:I

    .line 154
    const/16 v0, 0x47a

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndX:I

    .line 155
    const/16 v0, 0x125

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndY:I

    .line 156
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndX:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoWidth:I

    .line 157
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndY:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoHeight:I

    .line 159
    const/16 v0, 0x712

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverX:I

    .line 160
    const/16 v0, 0x30

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverY:I

    .line 161
    const/16 v0, 0x846

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndX:I

    .line 162
    const/16 v0, 0x66

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndY:I

    .line 163
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndX:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverWidth:I

    .line 164
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndY:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverHeight:I

    .line 166
    const/16 v0, 0x3bb

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoX:I

    .line 167
    const/16 v0, 0x3a4

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoY:I

    .line 168
    const/16 v0, 0x47e

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndX:I

    .line 169
    const/16 v0, 0x3c7

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndY:I

    .line 170
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndX:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoWidth:I

    .line 171
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndY:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoHeight:I

    .line 173
    const/16 v0, 0x154

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeX:I

    .line 174
    const/16 v0, 0x3ac

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeY:I

    .line 175
    const/16 v0, 0x226

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndX:I

    .line 176
    const/16 v0, 0x3e3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndY:I

    .line 177
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeX:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeWidth:I

    .line 178
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeY:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeHeight:I

    .line 180
    const/16 v2, 0x73a

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverX:I

    .line 181
    const/16 v2, 0x32

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverY:I

    .line 182
    const/16 v2, 0x820

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndX:I

    .line 183
    const/16 v4, 0x64

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndY:I

    .line 184
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverWidth:I

    .line 185
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverHeight:I

    .line 187
    const/16 v4, 0x384

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoX:I

    .line 188
    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoY:I

    .line 189
    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndX:I

    .line 190
    const/16 v0, 0x401

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndY:I

    .line 191
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoWidth:I

    .line 192
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoHeight:I

    .line 194
    const/16 v0, 0x39d

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeX:I

    .line 195
    const/16 v0, 0x39b

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeY:I

    .line 196
    const/16 v0, 0x46a

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndX:I

    .line 197
    const/16 v0, 0x3be

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndY:I

    .line 198
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeWidth:I

    .line 199
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeHeight:I

    .line 201
    const/16 v0, 0x31b

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverX:I

    .line 202
    const/16 v0, 0x46

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverY:I

    .line 203
    const/16 v0, 0x4ba

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndX:I

    .line 204
    const/16 v0, 0x7d

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndY:I

    .line 205
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverWidth:I

    .line 206
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverHeight:I

    .line 208
    const/16 v0, 0x12

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorX:I

    .line 209
    const/16 v0, 0x34c

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorY:I

    .line 210
    const/16 v0, 0x67

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndX:I

    .line 211
    const/16 v0, 0x36a

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndY:I

    .line 212
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorWidth:I

    .line 213
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorHeight:I

    .line 215
    const/16 v0, 0x37

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordX:I

    .line 216
    const/16 v0, 0x264

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordY:I

    .line 217
    const/16 v0, 0x50

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndX:I

    .line 218
    const/16 v0, 0x282

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndY:I

    .line 219
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordWidth:I

    .line 220
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordHeight:I

    .line 222
    const/16 v0, 0x6db

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillX:I

    .line 223
    const/16 v0, 0x3f0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillY:I

    .line 224
    const/16 v3, 0x6fe

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndX:I

    .line 225
    const/16 v3, 0x40e

    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndY:I

    .line 226
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillWidth:I

    .line 227
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillHeight:I

    .line 229
    const/16 v4, 0x782

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistX:I

    .line 230
    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistY:I

    .line 231
    const/16 v4, 0x7a5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndX:I

    .line 232
    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndY:I

    .line 233
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndX:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistWidth:I

    .line 234
    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndY:I

    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistHeight:I

    .line 236
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoX:I

    .line 237
    const/16 v2, 0x404

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoY:I

    .line 238
    const/16 v2, 0x836

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndX:I

    .line 239
    const/16 v2, 0x41c

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndY:I

    .line 240
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndX:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoX:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoWidth:I

    .line 241
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndY:I

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoY:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoHeight:I

    .line 243
    const/16 v2, 0x610

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoX:I

    .line 244
    const/16 v2, 0x3d9

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoY:I

    .line 245
    const/16 v4, 0x633

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndX:I

    .line 246
    const/16 v4, 0x3f7

    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndY:I

    .line 247
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndX:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoX:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoWidth:I

    .line 248
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndY:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoY:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoHeight:I

    .line 250
    const/16 v5, 0x6ba

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoX:I

    .line 251
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoY:I

    .line 252
    const/16 v5, 0x6dd

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndX:I

    .line 253
    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndY:I

    .line 254
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndX:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoX:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoWidth:I

    .line 255
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndY:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoY:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoHeight:I

    .line 263
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryX:I

    .line 264
    const/16 v5, 0x235

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryY:I

    .line 265
    const/16 v5, 0x41f

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndX:I

    .line 266
    const/16 v5, 0x262

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndY:I

    .line 267
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndX:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryX:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryWidth:I

    .line 268
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndY:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryY:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryHeight:I

    .line 270
    const/16 v5, 0x3d8

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastX:I

    .line 271
    const/16 v5, 0x343

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastY:I

    .line 272
    const/16 v5, 0x49e

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndX:I

    .line 273
    const/16 v5, 0x372

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndY:I

    .line 274
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndX:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastX:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastWidth:I

    .line 275
    iget v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndY:I

    iget v6, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastY:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastHeight:I

    .line 277
    const/16 v5, 0x72b

    iput v5, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieX:I

    .line 278
    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieY:I

    .line 279
    const/16 v0, 0x753

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndX:I

    .line 280
    iput v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndY:I

    .line 281
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndX:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieX:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieWidth:I

    .line 282
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndY:I

    iget v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieY:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieHeight:I

    .line 284
    const/16 v0, 0x663

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoX:I

    .line 285
    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoY:I

    .line 286
    const/16 v0, 0x68b

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndX:I

    .line 287
    iput v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndY:I

    .line 288
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndX:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoWidth:I

    .line 289
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndY:I

    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoHeight:I

    .line 291
    iput v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameType:I

    .line 293
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 591
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$2;-><init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->brReceiver:Landroid/content/BroadcastReceiver;

    .line 618
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$3;-><init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mReadTextRunnable:Ljava/lang/Runnable;

    .line 626
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$4;-><init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCheckRecordActivityRunnable:Ljava/lang/Runnable;

    .line 333
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    .line 334
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaHighlightsIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mThread:Landroid/os/HandlerThread;

    .line 335
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 336
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$1;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$1;-><init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->brReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWindowManager:Landroid/view/WindowManager;

    .line 351
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 352
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mActivityManager:Landroid/app/ActivityManager;

    .line 353
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContentResolver:Landroid/content/ContentResolver;

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->startHighLights()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppPid:I

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
    .param p1, "x1"    # I

    .line 43
    iput p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppPid:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIntentString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMapKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->getScreenBaseInfo()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    return v0
.end method

.method private bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1300
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1301
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1302
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private callback(Landroid/os/Message;J)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "flag"    # J

    .line 425
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    .local v0, "N":I
    const/4 v1, 0x0

    .line 426
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 428
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;

    .line 429
    .local v2, "filter":Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
    iget-wide v3, v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->flag:J

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->filterPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnubia/os/ITaskCallback;

    invoke-interface {v3, p1}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    .end local v2    # "filter":Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
    :cond_0
    goto :goto_1

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    if-eqz v3, :cond_1

    .line 436
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 443
    .end local v0    # "N":I
    goto :goto_2

    .line 441
    :catch_1
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NubiaHighlightsProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private getScreenBaseInfo()V
    .locals 5

    .line 375
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 376
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 377
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 378
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 379
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    .line 380
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    add-int/lit16 v2, v2, -0x870

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 381
    iget v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 382
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "NubiaHighlightsProducer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDisplayWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDisplayHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDisplayDefferX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDisplayMeanX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    return-void
.end method

.method private notifyCallback(Lnubia/os/ITaskCallback;Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/ITaskCallback;
    .param p2, "msg"    # Landroid/os/Message;

    .line 390
    :try_start_0
    invoke-interface {p1, p2}, Lnubia/os/ITaskCallback;->actionPerformed(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 394
    :goto_0
    return-void
.end method

.method private startHighLights()V
    .locals 4

    .line 1359
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1363
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCmpName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1364
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->stopScreenRecord()V

    .line 1367
    const-string v1, "NubiaHighlightsProducer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private toTempString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgFilter"    # [Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 400
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 401
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .end local v3    # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateBLZY()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverX:I

    .line 554
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverY:I

    .line 555
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndX:I

    .line 556
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndY:I

    .line 558
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordX:I

    .line 559
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordY:I

    .line 560
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndX:I

    .line 561
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndY:I

    .line 563
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillX:I

    .line 564
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillY:I

    .line 565
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndX:I

    .line 566
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndY:I

    .line 568
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "VictoryX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryX:I

    .line 569
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "VictoryY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryY:I

    .line 570
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "VictoryEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndX:I

    .line 571
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "VictoryEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndY:I

    .line 572
    return-void
.end method

.method private updateCJZC()V
    .locals 2

    .line 510
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateSameCJZC()V

    .line 511
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverX:I

    .line 512
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverY:I

    .line 513
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndX:I

    .line 514
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndY:I

    .line 515
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorX:I

    .line 516
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorY:I

    .line 517
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndX:I

    .line 518
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndY:I

    .line 519
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoX:I

    .line 520
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoY:I

    .line 521
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndX:I

    .line 522
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndY:I

    .line 523
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeX:I

    .line 524
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeY:I

    .line 525
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndX:I

    .line 526
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndY:I

    .line 527
    return-void
.end method

.method private updateCJZCENG()V
    .locals 2

    .line 530
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateSameCJZC()V

    .line 531
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverX:I

    .line 532
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverY:I

    .line 533
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndX:I

    .line 534
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndY:I

    .line 536
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorX:I

    .line 537
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorY:I

    .line 538
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndX:I

    .line 539
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndY:I

    .line 541
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoX:I

    .line 542
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoY:I

    .line 543
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndX:I

    .line 544
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndY:I

    .line 546
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeX:I

    .line 547
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeY:I

    .line 548
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndX:I

    .line 549
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverThreeEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndY:I

    .line 550
    return-void
.end method

.method private updateRedMagicTime()V
    .locals 3

    .line 453
    const-string v0, "NubiaHighlightsProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRedMagicTime() mRunPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateWZRY()V

    goto :goto_1

    .line 457
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateCJZC()V

    goto :goto_1

    .line 459
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mRunPackageName:Ljava/lang/String;

    sget-object v1, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateBLZY()V

    goto :goto_1

    .line 460
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateCJZCENG()V

    .line 465
    :cond_4
    :goto_1
    return-void
.end method

.method private updateSameCJZC()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordX:I

    .line 576
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordY:I

    .line 577
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndX:I

    .line 578
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndY:I

    .line 580
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillX:I

    .line 581
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillY:I

    .line 582
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndX:I

    .line 583
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndY:I

    .line 585
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoX:I

    .line 586
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoY:I

    .line 587
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndX:I

    .line 588
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndY:I

    .line 589
    return-void
.end method

.method private updateWZRY()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverX:I

    .line 469
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverY:I

    .line 470
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndX:I

    .line 471
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "OverEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndY:I

    .line 473
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorX:I

    .line 474
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorY:I

    .line 475
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndX:I

    .line 476
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "ErrorEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndY:I

    .line 478
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordX:I

    .line 479
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordY:I

    .line 480
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndX:I

    .line 481
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndY:I

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillX:I

    .line 484
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillY:I

    .line 485
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndX:I

    .line 486
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndY:I

    .line 488
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistX:I

    .line 489
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistY:I

    .line 490
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndX:I

    .line 491
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndY:I

    .line 493
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoX:I

    .line 494
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoY:I

    .line 495
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndX:I

    .line 496
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "RecordTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndY:I

    .line 498
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoX:I

    .line 499
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoY:I

    .line 500
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndX:I

    .line 501
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "KillTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndY:I

    .line 503
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistTwoX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoX:I

    .line 504
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistTwoY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoY:I

    .line 505
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistTwoEndX"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndX:I

    .line 506
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mPkgCoordinateMap:Ljava/util/HashMap;

    const-string v1, "AssistTwoEndY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndY:I

    .line 507
    return-void
.end method


# virtual methods
.method public notePausingActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 1340
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1343
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->stopScreenRecord()V

    .line 1346
    :cond_1
    return-void

    .line 1341
    :cond_2
    :goto_0
    return-void
.end method

.method public noteResumedAppDie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 1349
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->stopScreenRecord()V

    .line 1355
    :cond_1
    return-void

    .line 1350
    :cond_2
    :goto_0
    return-void
.end method

.method public noteResumingActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 1306
    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1309
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppProcessName:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    iput p3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHighlightsAppPid:I

    .line 1312
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "persist_sys_nubia_scene_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "scenelamp_main_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1313
    .local v0, "isScean":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "persist_sys_nubia_redmagic_time_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_3

    if-eqz v0, :cond_8

    .line 1314
    :cond_3
    sget-object v3, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x7d0

    if-eqz v3, :cond_4

    sget-object v3, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1315
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartCJZC:Z

    .line 1316
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCheckRecordActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1319
    :cond_4
    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    .line 1320
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1321
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartEngCJZC:Z

    .line 1322
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCheckRecordActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1325
    :cond_6
    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1326
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartWZRY:Z

    .line 1327
    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCheckRecordActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1330
    :cond_7
    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGamePackages:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameActivitys:Ljava/util/ArrayList;

    .line 1331
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1332
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartBLZY:Z

    .line 1334
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCheckRecordActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1337
    :cond_8
    return-void

    .line 1307
    .end local v0    # "isScean":Z
    :cond_9
    :goto_1
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .line 357
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "filterBundle"    # Landroid/os/Bundle;

    .line 361
    const-string v0, "filter_packages"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J[Ljava/lang/String;)V
    .locals 3
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "pkgFilter"    # [Ljava/lang/String;

    .line 365
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "NubiaHighlightsProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback   flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pkgFilter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->toTempString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    if-eqz p1, :cond_1

    .line 369
    new-instance v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;

    invoke-direct {v0, p0, p2, p3, p4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;-><init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;J[Ljava/lang/String;)V

    .line 370
    .local v0, "filter":Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 372
    .end local v0    # "filter":Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
    :cond_1
    return-void
.end method

.method public scheduleReadTextRunnable()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mReadTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartScreenRecord:Z

    if-eqz v0, :cond_3

    .line 654
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartBLZY:Z

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mReadTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartCJZC:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartEngCJZC:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mReadTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 657
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mReadTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    :cond_3
    :goto_1
    return-void
.end method

.method public screenCapture()V
    .locals 541

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 669
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 671
    .local v2, "rotation":I
    const/4 v3, 0x0

    .line 672
    .local v3, "blzyRecordX":I
    const/4 v4, 0x0

    .line 673
    .local v4, "blzyRecordY":I
    const/4 v5, 0x0

    .line 674
    .local v5, "blzyRecordEndX":I
    const/4 v6, 0x0

    .line 676
    .local v6, "blzyRecordEndY":I
    const/4 v7, 0x0

    .line 677
    .local v7, "blzyKillX":I
    const/4 v8, 0x0

    .line 678
    .local v8, "blzyKillY":I
    const/4 v9, 0x0

    .line 679
    .local v9, "blzyKillEndX":I
    const/4 v10, 0x0

    .line 681
    .local v10, "blzyKillEndY":I
    const/4 v11, 0x0

    .line 682
    .local v11, "blzyOverX":I
    const/4 v12, 0x0

    .line 683
    .local v12, "blzyOverY":I
    const/4 v13, 0x0

    .line 684
    .local v13, "blzyOverEndX":I
    const/4 v14, 0x0

    .line 686
    .local v14, "blzyOverEndY":I
    const/4 v15, 0x0

    .line 687
    .local v15, "blzyVictoryX":I
    const/16 v16, 0x0

    .line 688
    .local v16, "blzyVictoryY":I
    const/16 v17, 0x0

    .line 689
    .local v17, "blzyVictoryEndX":I
    const/16 v18, 0x0

    .line 692
    .local v18, "blzyVictoryEndY":I
    const/16 v19, 0x0

    .line 693
    .local v19, "cjzcRecordX":I
    const/16 v20, 0x0

    .line 694
    .local v20, "cjzcRecordY":I
    const/16 v21, 0x0

    .line 695
    .local v21, "cjzcRecordEndX":I
    const/16 v22, 0x0

    .line 697
    .local v22, "cjzcRecordEndY":I
    const/16 v23, 0x0

    .line 698
    .local v23, "cjzcErrorX":I
    const/16 v24, 0x0

    .line 699
    .local v24, "cjzcErrorY":I
    const/16 v25, 0x0

    .line 700
    .local v25, "cjzcErrorEndX":I
    const/16 v26, 0x0

    .line 702
    .local v26, "cjzcErrorEndY":I
    const/16 v27, 0x0

    .line 703
    .local v27, "engCjzcErrorX":I
    const/16 v28, 0x0

    .line 704
    .local v28, "engCjzcErrorY":I
    const/16 v29, 0x0

    .line 705
    .local v29, "engCjzcErrorEndX":I
    const/16 v30, 0x0

    .line 707
    .local v30, "engCjzcErrorEndY":I
    const/16 v31, 0x0

    .line 708
    .local v31, "cjzcKillX":I
    const/16 v32, 0x0

    .line 709
    .local v32, "cjzcKillY":I
    const/16 v33, 0x0

    .line 710
    .local v33, "cjzcKillEndX":I
    const/16 v34, 0x0

    .line 712
    .local v34, "cjzcKillEndY":I
    const/16 v35, 0x0

    .line 713
    .local v35, "cjzcOverX":I
    const/16 v36, 0x0

    .line 714
    .local v36, "cjzcOverY":I
    const/16 v37, 0x0

    .line 715
    .local v37, "cjzcOverEndX":I
    const/16 v38, 0x0

    .line 717
    .local v38, "cjzcOverEndY":I
    const/16 v39, 0x0

    .line 718
    .local v39, "cjzcOverTwoX":I
    const/16 v40, 0x0

    .line 719
    .local v40, "cjzcOverTwoY":I
    const/16 v41, 0x0

    .line 720
    .local v41, "cjzcOverTwoEndX":I
    const/16 v42, 0x0

    .line 722
    .local v42, "cjzcOverTwoEndY":I
    const/16 v43, 0x0

    .line 723
    .local v43, "cjzcOverThreeX":I
    const/16 v44, 0x0

    .line 724
    .local v44, "cjzcOverThreeY":I
    const/16 v45, 0x0

    .line 725
    .local v45, "cjzcOverThreeEndX":I
    const/16 v46, 0x0

    .line 727
    .local v46, "cjzcOverThreeEndY":I
    const/16 v47, 0x0

    .line 728
    .local v47, "engCjzcOverX":I
    const/16 v48, 0x0

    .line 729
    .local v48, "engCjzcOverY":I
    const/16 v49, 0x0

    .line 730
    .local v49, "engCjzcOverEndX":I
    const/16 v50, 0x0

    .line 732
    .local v50, "engCjzcOverEndY":I
    const/16 v51, 0x0

    .line 733
    .local v51, "engCjzcOverTwoX":I
    const/16 v52, 0x0

    .line 734
    .local v52, "engCjzcOverTwoY":I
    const/16 v53, 0x0

    .line 735
    .local v53, "engCjzcOverTwoEndX":I
    const/16 v54, 0x0

    .line 737
    .local v54, "engCjzcOverTwoEndY":I
    const/16 v55, 0x0

    .line 738
    .local v55, "engCjzcOverThreeX":I
    const/16 v56, 0x0

    .line 739
    .local v56, "engCjzcOverThreeY":I
    const/16 v57, 0x0

    .line 740
    .local v57, "engCjzcOverThreeEndX":I
    const/16 v58, 0x0

    .line 742
    .local v58, "engCjzcOverThreeEndY":I
    const/16 v59, 0x0

    .line 743
    .local v59, "cjzcKillTwoX":I
    const/16 v60, 0x0

    .line 744
    .local v60, "cjzcKillTwoY":I
    const/16 v61, 0x0

    .line 745
    .local v61, "cjzcKillTwoEndX":I
    const/16 v62, 0x0

    .line 747
    .local v62, "cjzcKillTwoEndY":I
    const/16 v63, 0x0

    .line 748
    .local v63, "wzryOverX":I
    const/16 v64, 0x0

    .line 749
    .local v64, "wzryOverY":I
    const/16 v65, 0x0

    .line 750
    .local v65, "wzryOverEndX":I
    const/16 v66, 0x0

    .line 752
    .local v66, "wzryOverEndY":I
    const/16 v67, 0x0

    .line 753
    .local v67, "wzryErrorX":I
    const/16 v68, 0x0

    .line 754
    .local v68, "wzryErrorY":I
    const/16 v69, 0x0

    .line 755
    .local v69, "wzryErrorEndX":I
    const/16 v70, 0x0

    .line 757
    .local v70, "wzryErrorEndY":I
    const/16 v71, 0x0

    .line 758
    .local v71, "wzryRecordX":I
    const/16 v72, 0x0

    .line 759
    .local v72, "wzryRecordY":I
    const/16 v73, 0x0

    .line 760
    .local v73, "wzryRecordEndX":I
    const/16 v74, 0x0

    .line 762
    .local v74, "wzryRecordEndY":I
    const/16 v75, 0x0

    .line 763
    .local v75, "wzryKillX":I
    const/16 v76, 0x0

    .line 764
    .local v76, "wzryKillY":I
    const/16 v77, 0x0

    .line 765
    .local v77, "wzryKillEndX":I
    const/16 v78, 0x0

    .line 767
    .local v78, "wzryKillEndY":I
    const/16 v79, 0x0

    .line 768
    .local v79, "wzryAssistX":I
    const/16 v80, 0x0

    .line 769
    .local v80, "wzryAssistY":I
    const/16 v81, 0x0

    .line 770
    .local v81, "wzryAssistEndX":I
    const/16 v82, 0x0

    .line 772
    .local v82, "wzryAssistEndY":I
    const/16 v83, 0x0

    .line 773
    .local v83, "wzryRecordTwoX":I
    const/16 v84, 0x0

    .line 774
    .local v84, "wzryRecordTwoY":I
    const/16 v85, 0x0

    .line 775
    .local v85, "wzryRecordTwoEndX":I
    const/16 v86, 0x0

    .line 777
    .local v86, "wzryRecordTwoEndY":I
    const/16 v87, 0x0

    .line 778
    .local v87, "wzryKillTwoX":I
    const/16 v88, 0x0

    .line 779
    .local v88, "wzryKillTwoY":I
    const/16 v89, 0x0

    .line 780
    .local v89, "wzryKillTwoEndX":I
    const/16 v90, 0x0

    .line 782
    .local v90, "wzryKillTwoEndY":I
    const/16 v91, 0x0

    .line 783
    .local v91, "wzryAssistTwoX":I
    const/16 v92, 0x0

    .line 784
    .local v92, "wzryAssistTwoY":I
    const/16 v93, 0x0

    .line 785
    .local v93, "wzryAssistTwoEndX":I
    const/16 v94, 0x0

    .line 787
    .local v94, "wzryAssistTwoEndY":I
    const/16 v95, 0x0

    .line 788
    .local v95, "wzryVictoryX":I
    const/16 v96, 0x0

    .line 789
    .local v96, "wzryVictoryY":I
    const/16 v97, 0x0

    .line 790
    .local v97, "wzryVictoryEndX":I
    const/16 v98, 0x0

    .line 792
    .local v98, "wzryVictoryEndY":I
    const/16 v99, 0x0

    .line 793
    .local v99, "wzryToastX":I
    const/16 v100, 0x0

    .line 794
    .local v100, "wzryToastY":I
    const/16 v101, 0x0

    .line 795
    .local v101, "wzryToastEndX":I
    const/16 v102, 0x0

    .line 797
    .local v102, "wzryToastEndY":I
    const/16 v103, 0x0

    .line 798
    .local v103, "wzryDieX":I
    const/16 v104, 0x0

    .line 799
    .local v104, "wzryDieY":I
    const/16 v105, 0x0

    .line 800
    .local v105, "wzryDieEndX":I
    const/16 v106, 0x0

    .line 802
    .local v106, "wzryDieEndY":I
    const/16 v107, 0x0

    .line 803
    .local v107, "wzryDieTwoX":I
    const/16 v108, 0x0

    .line 804
    .local v108, "wzryDieTwoY":I
    const/16 v109, 0x0

    .line 805
    .local v109, "wzryDieTwoEndX":I
    const/16 v110, 0x0

    .line 807
    .local v110, "wzryDieTwoEndY":I
    move-object/from16 v111, v1

    const/4 v1, 0x3

    .line 807
    .end local v1    # "display":Landroid/view/Display;
    .local v111, "display":Landroid/view/Display;
    if-eq v2, v1, :cond_1

    .line 808
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordX:I

    move/from16 v112, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 808
    .end local v3    # "blzyRecordX":I
    .local v112, "blzyRecordX":I
    add-int/2addr v1, v3

    .line 809
    .end local v112    # "blzyRecordX":I
    .local v1, "blzyRecordX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordY:I

    .line 810
    .end local v4    # "blzyRecordY":I
    .local v3, "blzyRecordY":I
    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndX:I

    move/from16 v113, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 810
    .end local v1    # "blzyRecordX":I
    .local v113, "blzyRecordX":I
    add-int/2addr v4, v1

    .line 811
    .end local v5    # "blzyRecordEndX":I
    .local v4, "blzyRecordEndX":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndY:I

    .line 813
    .end local v6    # "blzyRecordEndY":I
    .local v1, "blzyRecordEndY":I
    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillX:I

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    add-int/2addr v5, v6

    .line 814
    .end local v7    # "blzyKillX":I
    .local v5, "blzyKillX":I
    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillY:I

    .line 815
    .end local v8    # "blzyKillY":I
    .local v6, "blzyKillY":I
    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndX:I

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    add-int/2addr v7, v8

    .line 816
    .end local v9    # "blzyKillEndX":I
    .local v7, "blzyKillEndX":I
    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndY:I

    .line 818
    .end local v10    # "blzyKillEndY":I
    .local v8, "blzyKillEndY":I
    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverX:I

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    add-int/2addr v9, v10

    .line 819
    .end local v11    # "blzyOverX":I
    .local v9, "blzyOverX":I
    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverY:I

    .line 820
    .end local v12    # "blzyOverY":I
    .local v10, "blzyOverY":I
    iget v11, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndX:I

    iget v12, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    add-int/2addr v11, v12

    .line 821
    .end local v13    # "blzyOverEndX":I
    .local v11, "blzyOverEndX":I
    iget v12, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndY:I

    .line 823
    .end local v14    # "blzyOverEndY":I
    .local v12, "blzyOverEndY":I
    iget v13, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryX:I

    iget v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    add-int/2addr v13, v14

    .line 824
    .end local v15    # "blzyVictoryX":I
    .local v13, "blzyVictoryX":I
    iget v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryY:I

    .line 825
    .end local v16    # "blzyVictoryY":I
    .local v14, "blzyVictoryY":I
    iget v15, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndX:I

    move/from16 v114, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 825
    .end local v1    # "blzyRecordEndY":I
    .local v114, "blzyRecordEndY":I
    add-int/2addr v15, v1

    .line 826
    .end local v17    # "blzyVictoryEndX":I
    .local v15, "blzyVictoryEndX":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndY:I

    .line 828
    .end local v18    # "blzyVictoryEndY":I
    .local v1, "blzyVictoryEndY":I
    move/from16 v115, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordX:I

    .line 829
    .end local v19    # "cjzcRecordX":I
    .local v1, "cjzcRecordX":I
    .local v115, "blzyVictoryEndY":I
    move/from16 v116, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordY:I

    .line 830
    .end local v20    # "cjzcRecordY":I
    .local v1, "cjzcRecordY":I
    .local v116, "cjzcRecordX":I
    move/from16 v117, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndX:I

    .line 831
    .end local v21    # "cjzcRecordEndX":I
    .local v1, "cjzcRecordEndX":I
    .local v117, "cjzcRecordY":I
    move/from16 v118, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndY:I

    .line 833
    .end local v22    # "cjzcRecordEndY":I
    .local v1, "cjzcRecordEndY":I
    .local v118, "cjzcRecordEndX":I
    move/from16 v119, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorX:I

    .line 834
    .end local v23    # "cjzcErrorX":I
    .local v1, "cjzcErrorX":I
    .local v119, "cjzcRecordEndY":I
    move/from16 v120, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorY:I

    .line 835
    .end local v24    # "cjzcErrorY":I
    .local v1, "cjzcErrorY":I
    .local v120, "cjzcErrorX":I
    move/from16 v121, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndX:I

    .line 836
    .end local v25    # "cjzcErrorEndX":I
    .local v1, "cjzcErrorEndX":I
    .local v121, "cjzcErrorY":I
    move/from16 v122, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndY:I

    .line 838
    .end local v26    # "cjzcErrorEndY":I
    .local v1, "cjzcErrorEndY":I
    .local v122, "cjzcErrorEndX":I
    move/from16 v123, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorX:I

    .line 839
    .end local v27    # "engCjzcErrorX":I
    .local v1, "engCjzcErrorX":I
    .local v123, "cjzcErrorEndY":I
    move/from16 v124, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorY:I

    .line 840
    .end local v28    # "engCjzcErrorY":I
    .local v1, "engCjzcErrorY":I
    .local v124, "engCjzcErrorX":I
    move/from16 v125, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndX:I

    .line 841
    .end local v29    # "engCjzcErrorEndX":I
    .local v1, "engCjzcErrorEndX":I
    .local v125, "engCjzcErrorY":I
    move/from16 v126, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndY:I

    .line 843
    .end local v30    # "engCjzcErrorEndY":I
    .local v1, "engCjzcErrorEndY":I
    .local v126, "engCjzcErrorEndX":I
    move/from16 v127, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillX:I

    .line 843
    .end local v1    # "engCjzcErrorEndY":I
    .local v127, "engCjzcErrorEndY":I
    move/from16 v128, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 843
    .end local v3    # "blzyRecordY":I
    .local v128, "blzyRecordY":I
    add-int/2addr v1, v3

    .line 844
    .end local v31    # "cjzcKillX":I
    .local v1, "cjzcKillX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillY:I

    .line 845
    .end local v32    # "cjzcKillY":I
    .local v3, "cjzcKillY":I
    move/from16 v129, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndX:I

    .line 845
    .end local v1    # "cjzcKillX":I
    .local v129, "cjzcKillX":I
    move/from16 v130, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 845
    .end local v3    # "cjzcKillY":I
    .local v130, "cjzcKillY":I
    add-int/2addr v1, v3

    .line 846
    .end local v33    # "cjzcKillEndX":I
    .local v1, "cjzcKillEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndY:I

    .line 848
    .end local v34    # "cjzcKillEndY":I
    .local v3, "cjzcKillEndY":I
    move/from16 v131, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverX:I

    .line 848
    .end local v1    # "cjzcKillEndX":I
    .local v131, "cjzcKillEndX":I
    move/from16 v132, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 848
    .end local v3    # "cjzcKillEndY":I
    .local v132, "cjzcKillEndY":I
    add-int/2addr v1, v3

    .line 849
    .end local v35    # "cjzcOverX":I
    .local v1, "cjzcOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverY:I

    .line 850
    .end local v36    # "cjzcOverY":I
    .local v3, "cjzcOverY":I
    move/from16 v133, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndX:I

    .line 850
    .end local v1    # "cjzcOverX":I
    .local v133, "cjzcOverX":I
    move/from16 v134, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 850
    .end local v3    # "cjzcOverY":I
    .local v134, "cjzcOverY":I
    add-int/2addr v1, v3

    .line 851
    .end local v37    # "cjzcOverEndX":I
    .local v1, "cjzcOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndY:I

    .line 853
    .end local v38    # "cjzcOverEndY":I
    .local v3, "cjzcOverEndY":I
    move/from16 v135, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoX:I

    .line 853
    .end local v1    # "cjzcOverEndX":I
    .local v135, "cjzcOverEndX":I
    move/from16 v136, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 853
    .end local v3    # "cjzcOverEndY":I
    .local v136, "cjzcOverEndY":I
    add-int/2addr v1, v3

    .line 854
    .end local v39    # "cjzcOverTwoX":I
    .local v1, "cjzcOverTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoY:I

    .line 855
    .end local v40    # "cjzcOverTwoY":I
    .local v3, "cjzcOverTwoY":I
    move/from16 v137, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndX:I

    .line 855
    .end local v1    # "cjzcOverTwoX":I
    .local v137, "cjzcOverTwoX":I
    move/from16 v138, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 855
    .end local v3    # "cjzcOverTwoY":I
    .local v138, "cjzcOverTwoY":I
    add-int/2addr v1, v3

    .line 856
    .end local v41    # "cjzcOverTwoEndX":I
    .local v1, "cjzcOverTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndY:I

    .line 858
    .end local v42    # "cjzcOverTwoEndY":I
    .local v3, "cjzcOverTwoEndY":I
    move/from16 v139, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeX:I

    .line 859
    .end local v43    # "cjzcOverThreeX":I
    .local v1, "cjzcOverThreeX":I
    .local v139, "cjzcOverTwoEndX":I
    move/from16 v140, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeY:I

    .line 860
    .end local v44    # "cjzcOverThreeY":I
    .local v1, "cjzcOverThreeY":I
    .local v140, "cjzcOverThreeX":I
    move/from16 v141, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndX:I

    .line 861
    .end local v45    # "cjzcOverThreeEndX":I
    .local v1, "cjzcOverThreeEndX":I
    .local v141, "cjzcOverThreeY":I
    move/from16 v142, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeEndY:I

    .line 863
    .end local v46    # "cjzcOverThreeEndY":I
    .local v1, "cjzcOverThreeEndY":I
    .local v142, "cjzcOverThreeEndX":I
    move/from16 v143, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverX:I

    .line 863
    .end local v1    # "cjzcOverThreeEndY":I
    .local v143, "cjzcOverThreeEndY":I
    move/from16 v144, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 863
    .end local v3    # "cjzcOverTwoEndY":I
    .local v144, "cjzcOverTwoEndY":I
    add-int/2addr v1, v3

    .line 864
    .end local v47    # "engCjzcOverX":I
    .local v1, "engCjzcOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverY:I

    .line 865
    .end local v48    # "engCjzcOverY":I
    .local v3, "engCjzcOverY":I
    move/from16 v145, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndX:I

    .line 865
    .end local v1    # "engCjzcOverX":I
    .local v145, "engCjzcOverX":I
    move/from16 v146, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    .line 865
    .end local v3    # "engCjzcOverY":I
    .local v146, "engCjzcOverY":I
    add-int/2addr v1, v3

    .line 866
    .end local v49    # "engCjzcOverEndX":I
    .local v1, "engCjzcOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndY:I

    .line 868
    .end local v50    # "engCjzcOverEndY":I
    .local v3, "engCjzcOverEndY":I
    move/from16 v147, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoX:I

    .line 868
    .end local v1    # "engCjzcOverEndX":I
    .local v147, "engCjzcOverEndX":I
    move/from16 v148, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 868
    .end local v3    # "engCjzcOverEndY":I
    .local v148, "engCjzcOverEndY":I
    add-int/2addr v1, v3

    .line 869
    .end local v51    # "engCjzcOverTwoX":I
    .local v1, "engCjzcOverTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoY:I

    .line 870
    .end local v52    # "engCjzcOverTwoY":I
    .local v3, "engCjzcOverTwoY":I
    move/from16 v149, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndX:I

    .line 870
    .end local v1    # "engCjzcOverTwoX":I
    .local v149, "engCjzcOverTwoX":I
    move/from16 v150, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 870
    .end local v3    # "engCjzcOverTwoY":I
    .local v150, "engCjzcOverTwoY":I
    add-int/2addr v1, v3

    .line 871
    .end local v53    # "engCjzcOverTwoEndX":I
    .local v1, "engCjzcOverTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoEndY:I

    .line 873
    .end local v54    # "engCjzcOverTwoEndY":I
    .local v3, "engCjzcOverTwoEndY":I
    move/from16 v151, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeX:I

    .line 873
    .end local v1    # "engCjzcOverTwoEndX":I
    .local v151, "engCjzcOverTwoEndX":I
    move/from16 v152, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 873
    .end local v3    # "engCjzcOverTwoEndY":I
    .local v152, "engCjzcOverTwoEndY":I
    add-int/2addr v1, v3

    .line 874
    .end local v55    # "engCjzcOverThreeX":I
    .local v1, "engCjzcOverThreeX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeY:I

    .line 875
    .end local v56    # "engCjzcOverThreeY":I
    .local v3, "engCjzcOverThreeY":I
    move/from16 v153, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndX:I

    .line 875
    .end local v1    # "engCjzcOverThreeX":I
    .local v153, "engCjzcOverThreeX":I
    move/from16 v154, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 875
    .end local v3    # "engCjzcOverThreeY":I
    .local v154, "engCjzcOverThreeY":I
    add-int/2addr v1, v3

    .line 876
    .end local v57    # "engCjzcOverThreeEndX":I
    .local v1, "engCjzcOverThreeEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeEndY:I

    .line 878
    .end local v58    # "engCjzcOverThreeEndY":I
    .local v3, "engCjzcOverThreeEndY":I
    move/from16 v155, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoX:I

    .line 879
    .end local v59    # "cjzcKillTwoX":I
    .local v1, "cjzcKillTwoX":I
    .local v155, "engCjzcOverThreeEndX":I
    move/from16 v156, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoY:I

    .line 880
    .end local v60    # "cjzcKillTwoY":I
    .local v1, "cjzcKillTwoY":I
    .local v156, "cjzcKillTwoX":I
    move/from16 v157, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndX:I

    .line 881
    .end local v61    # "cjzcKillTwoEndX":I
    .local v1, "cjzcKillTwoEndX":I
    .local v157, "cjzcKillTwoY":I
    move/from16 v158, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndY:I

    .line 883
    .end local v62    # "cjzcKillTwoEndY":I
    .local v1, "cjzcKillTwoEndY":I
    .local v158, "cjzcKillTwoEndX":I
    move/from16 v159, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverX:I

    .line 883
    .end local v1    # "cjzcKillTwoEndY":I
    .local v159, "cjzcKillTwoEndY":I
    move/from16 v160, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 883
    .end local v3    # "engCjzcOverThreeEndY":I
    .local v160, "engCjzcOverThreeEndY":I
    add-int/2addr v1, v3

    .line 884
    .end local v63    # "wzryOverX":I
    .local v1, "wzryOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverY:I

    .line 885
    .end local v64    # "wzryOverY":I
    .local v3, "wzryOverY":I
    move/from16 v161, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndX:I

    .line 885
    .end local v1    # "wzryOverX":I
    .local v161, "wzryOverX":I
    move/from16 v162, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 885
    .end local v3    # "wzryOverY":I
    .local v162, "wzryOverY":I
    add-int/2addr v1, v3

    .line 886
    .end local v65    # "wzryOverEndX":I
    .local v1, "wzryOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndY:I

    .line 888
    .end local v66    # "wzryOverEndY":I
    .local v3, "wzryOverEndY":I
    move/from16 v163, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorX:I

    .line 888
    .end local v1    # "wzryOverEndX":I
    .local v163, "wzryOverEndX":I
    move/from16 v164, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 888
    .end local v3    # "wzryOverEndY":I
    .local v164, "wzryOverEndY":I
    add-int/2addr v1, v3

    .line 889
    .end local v67    # "wzryErrorX":I
    .local v1, "wzryErrorX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorY:I

    .line 890
    .end local v68    # "wzryErrorY":I
    .local v3, "wzryErrorY":I
    move/from16 v165, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndX:I

    .line 890
    .end local v1    # "wzryErrorX":I
    .local v165, "wzryErrorX":I
    move/from16 v166, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 890
    .end local v3    # "wzryErrorY":I
    .local v166, "wzryErrorY":I
    add-int/2addr v1, v3

    .line 891
    .end local v69    # "wzryErrorEndX":I
    .local v1, "wzryErrorEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndY:I

    .line 893
    .end local v70    # "wzryErrorEndY":I
    .local v3, "wzryErrorEndY":I
    move/from16 v167, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordX:I

    .line 893
    .end local v1    # "wzryErrorEndX":I
    .local v167, "wzryErrorEndX":I
    move/from16 v168, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 893
    .end local v3    # "wzryErrorEndY":I
    .local v168, "wzryErrorEndY":I
    add-int/2addr v1, v3

    .line 894
    .end local v71    # "wzryRecordX":I
    .local v1, "wzryRecordX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordY:I

    .line 895
    .end local v72    # "wzryRecordY":I
    .local v3, "wzryRecordY":I
    move/from16 v169, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndX:I

    .line 895
    .end local v1    # "wzryRecordX":I
    .local v169, "wzryRecordX":I
    move/from16 v170, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 895
    .end local v3    # "wzryRecordY":I
    .local v170, "wzryRecordY":I
    add-int/2addr v1, v3

    .line 896
    .end local v73    # "wzryRecordEndX":I
    .local v1, "wzryRecordEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndY:I

    .line 898
    .end local v74    # "wzryRecordEndY":I
    .local v3, "wzryRecordEndY":I
    move/from16 v171, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillX:I

    .line 898
    .end local v1    # "wzryRecordEndX":I
    .local v171, "wzryRecordEndX":I
    move/from16 v172, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 898
    .end local v3    # "wzryRecordEndY":I
    .local v172, "wzryRecordEndY":I
    add-int/2addr v1, v3

    .line 899
    .end local v75    # "wzryKillX":I
    .local v1, "wzryKillX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillY:I

    .line 900
    .end local v76    # "wzryKillY":I
    .local v3, "wzryKillY":I
    move/from16 v173, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndX:I

    .line 900
    .end local v1    # "wzryKillX":I
    .local v173, "wzryKillX":I
    move/from16 v174, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 900
    .end local v3    # "wzryKillY":I
    .local v174, "wzryKillY":I
    add-int/2addr v1, v3

    .line 901
    .end local v77    # "wzryKillEndX":I
    .local v1, "wzryKillEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndY:I

    .line 903
    .end local v78    # "wzryKillEndY":I
    .local v3, "wzryKillEndY":I
    move/from16 v175, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistX:I

    .line 903
    .end local v1    # "wzryKillEndX":I
    .local v175, "wzryKillEndX":I
    move/from16 v176, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 903
    .end local v3    # "wzryKillEndY":I
    .local v176, "wzryKillEndY":I
    add-int/2addr v1, v3

    .line 904
    .end local v79    # "wzryAssistX":I
    .local v1, "wzryAssistX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistY:I

    .line 905
    .end local v80    # "wzryAssistY":I
    .local v3, "wzryAssistY":I
    move/from16 v177, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndX:I

    .line 905
    .end local v1    # "wzryAssistX":I
    .local v177, "wzryAssistX":I
    move/from16 v178, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 905
    .end local v3    # "wzryAssistY":I
    .local v178, "wzryAssistY":I
    add-int/2addr v1, v3

    .line 906
    .end local v81    # "wzryAssistEndX":I
    .local v1, "wzryAssistEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndY:I

    .line 908
    .end local v82    # "wzryAssistEndY":I
    .local v3, "wzryAssistEndY":I
    move/from16 v179, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoX:I

    .line 908
    .end local v1    # "wzryAssistEndX":I
    .local v179, "wzryAssistEndX":I
    move/from16 v180, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 908
    .end local v3    # "wzryAssistEndY":I
    .local v180, "wzryAssistEndY":I
    add-int/2addr v1, v3

    .line 909
    .end local v83    # "wzryRecordTwoX":I
    .local v1, "wzryRecordTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoY:I

    .line 910
    .end local v84    # "wzryRecordTwoY":I
    .local v3, "wzryRecordTwoY":I
    move/from16 v181, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndX:I

    .line 910
    .end local v1    # "wzryRecordTwoX":I
    .local v181, "wzryRecordTwoX":I
    move/from16 v182, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 910
    .end local v3    # "wzryRecordTwoY":I
    .local v182, "wzryRecordTwoY":I
    add-int/2addr v1, v3

    .line 911
    .end local v85    # "wzryRecordTwoEndX":I
    .local v1, "wzryRecordTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndY:I

    .line 913
    .end local v86    # "wzryRecordTwoEndY":I
    .local v3, "wzryRecordTwoEndY":I
    move/from16 v183, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoX:I

    .line 913
    .end local v1    # "wzryRecordTwoEndX":I
    .local v183, "wzryRecordTwoEndX":I
    move/from16 v184, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 913
    .end local v3    # "wzryRecordTwoEndY":I
    .local v184, "wzryRecordTwoEndY":I
    add-int/2addr v1, v3

    .line 914
    .end local v87    # "wzryKillTwoX":I
    .local v1, "wzryKillTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoY:I

    .line 915
    .end local v88    # "wzryKillTwoY":I
    .local v3, "wzryKillTwoY":I
    move/from16 v185, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndX:I

    .line 915
    .end local v1    # "wzryKillTwoX":I
    .local v185, "wzryKillTwoX":I
    move/from16 v186, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 915
    .end local v3    # "wzryKillTwoY":I
    .local v186, "wzryKillTwoY":I
    add-int/2addr v1, v3

    .line 916
    .end local v89    # "wzryKillTwoEndX":I
    .local v1, "wzryKillTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndY:I

    .line 918
    .end local v90    # "wzryKillTwoEndY":I
    .local v3, "wzryKillTwoEndY":I
    move/from16 v187, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoX:I

    .line 918
    .end local v1    # "wzryKillTwoEndX":I
    .local v187, "wzryKillTwoEndX":I
    move/from16 v188, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 918
    .end local v3    # "wzryKillTwoEndY":I
    .local v188, "wzryKillTwoEndY":I
    add-int/2addr v1, v3

    .line 919
    .end local v91    # "wzryAssistTwoX":I
    .local v1, "wzryAssistTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoY:I

    .line 920
    .end local v92    # "wzryAssistTwoY":I
    .local v3, "wzryAssistTwoY":I
    move/from16 v189, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndX:I

    .line 920
    .end local v1    # "wzryAssistTwoX":I
    .local v189, "wzryAssistTwoX":I
    move/from16 v190, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 920
    .end local v3    # "wzryAssistTwoY":I
    .local v190, "wzryAssistTwoY":I
    add-int/2addr v1, v3

    .line 921
    .end local v93    # "wzryAssistTwoEndX":I
    .local v1, "wzryAssistTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndY:I

    .line 923
    .end local v94    # "wzryAssistTwoEndY":I
    .local v3, "wzryAssistTwoEndY":I
    move/from16 v191, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryX:I

    .line 923
    .end local v1    # "wzryAssistTwoEndX":I
    .local v191, "wzryAssistTwoEndX":I
    move/from16 v192, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 923
    .end local v3    # "wzryAssistTwoEndY":I
    .local v192, "wzryAssistTwoEndY":I
    add-int/2addr v1, v3

    .line 924
    .end local v95    # "wzryVictoryX":I
    .local v1, "wzryVictoryX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryY:I

    .line 925
    .end local v96    # "wzryVictoryY":I
    .local v3, "wzryVictoryY":I
    move/from16 v193, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndX:I

    .line 925
    .end local v1    # "wzryVictoryX":I
    .local v193, "wzryVictoryX":I
    move/from16 v194, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 925
    .end local v3    # "wzryVictoryY":I
    .local v194, "wzryVictoryY":I
    add-int/2addr v1, v3

    .line 926
    .end local v97    # "wzryVictoryEndX":I
    .local v1, "wzryVictoryEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndY:I

    .line 928
    .end local v98    # "wzryVictoryEndY":I
    .local v3, "wzryVictoryEndY":I
    move/from16 v195, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastX:I

    .line 928
    .end local v1    # "wzryVictoryEndX":I
    .local v195, "wzryVictoryEndX":I
    move/from16 v196, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 928
    .end local v3    # "wzryVictoryEndY":I
    .local v196, "wzryVictoryEndY":I
    add-int/2addr v1, v3

    .line 929
    .end local v99    # "wzryToastX":I
    .local v1, "wzryToastX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastY:I

    .line 930
    .end local v100    # "wzryToastY":I
    .local v3, "wzryToastY":I
    move/from16 v197, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndX:I

    .line 930
    .end local v1    # "wzryToastX":I
    .local v197, "wzryToastX":I
    move/from16 v198, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 930
    .end local v3    # "wzryToastY":I
    .local v198, "wzryToastY":I
    add-int/2addr v1, v3

    .line 931
    .end local v101    # "wzryToastEndX":I
    .local v1, "wzryToastEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndY:I

    .line 933
    .end local v102    # "wzryToastEndY":I
    .local v3, "wzryToastEndY":I
    move/from16 v199, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieX:I

    .line 933
    .end local v1    # "wzryToastEndX":I
    .local v199, "wzryToastEndX":I
    move/from16 v200, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 933
    .end local v3    # "wzryToastEndY":I
    .local v200, "wzryToastEndY":I
    add-int/2addr v1, v3

    .line 934
    .end local v103    # "wzryDieX":I
    .local v1, "wzryDieX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieY:I

    .line 935
    .end local v104    # "wzryDieY":I
    .local v3, "wzryDieY":I
    move/from16 v201, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndX:I

    .line 935
    .end local v1    # "wzryDieX":I
    .local v201, "wzryDieX":I
    move/from16 v202, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 935
    .end local v3    # "wzryDieY":I
    .local v202, "wzryDieY":I
    add-int/2addr v1, v3

    .line 936
    .end local v105    # "wzryDieEndX":I
    .local v1, "wzryDieEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndY:I

    .line 938
    .end local v106    # "wzryDieEndY":I
    .local v3, "wzryDieEndY":I
    move/from16 v203, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoX:I

    .line 938
    .end local v1    # "wzryDieEndX":I
    .local v203, "wzryDieEndX":I
    move/from16 v204, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 938
    .end local v3    # "wzryDieEndY":I
    .local v204, "wzryDieEndY":I
    add-int/2addr v1, v3

    .line 939
    .end local v107    # "wzryDieTwoX":I
    .local v1, "wzryDieTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoY:I

    .line 940
    .end local v108    # "wzryDieTwoY":I
    .local v3, "wzryDieTwoY":I
    move/from16 v205, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndX:I

    .line 940
    .end local v1    # "wzryDieTwoX":I
    .local v205, "wzryDieTwoX":I
    move/from16 v206, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    .line 940
    .end local v3    # "wzryDieTwoY":I
    .local v206, "wzryDieTwoY":I
    add-int/2addr v1, v3

    .line 941
    .end local v109    # "wzryDieTwoEndX":I
    .local v1, "wzryDieTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndY:I

    .line 1080
    .end local v110    # "wzryDieTwoEndY":I
    .local v3, "wzryDieTwoEndY":I
    move/16 v394, v1

    move/16 v395, v3

    move/16 v334, v4

    move/16 v336, v5

    move/16 v337, v6

    move/16 v338, v7

    move/16 v339, v8

    move/16 v340, v9

    move/16 v341, v10

    move/16 v342, v11

    move/16 v343, v12

    move/16 v344, v13

    move/16 v345, v14

    move/16 v346, v15

    move/16 v332, v113

    move/16 v335, v114

    move/16 v347, v115

    move/from16 v1, v116

    move/from16 v3, v117

    move/from16 v4, v118

    move/from16 v5, v119

    move/16 v308, v120

    move/16 v309, v121

    move/16 v310, v122

    move/16 v311, v123

    move/from16 v6, v124

    move/from16 v7, v125

    move/from16 v8, v126

    move/from16 v9, v127

    move/16 v333, v128

    move/16 v324, v129

    move/16 v325, v130

    move/16 v326, v131

    move/16 v327, v132

    move/16 v312, v133

    move/16 v313, v134

    move/16 v314, v135

    move/16 v315, v136

    move/16 v316, v137

    move/16 v317, v138

    move/16 v318, v139

    move/16 v320, v140

    move/16 v321, v141

    move/16 v322, v142

    move/16 v323, v143

    move/16 v319, v144

    move/from16 v10, v145

    move/from16 v11, v146

    move/from16 v12, v147

    move/from16 v13, v148

    move/16 v302, v149

    move/from16 v15, v150

    move/16 v303, v151

    move/from16 v14, v152

    move/16 v304, v153

    move/16 v305, v154

    move/16 v306, v155

    move/16 v328, v156

    move/16 v329, v157

    move/16 v330, v158

    move/16 v331, v159

    move/16 v307, v160

    move/16 v348, v161

    move/16 v349, v162

    move/16 v350, v163

    move/16 v351, v164

    move/16 v352, v165

    move/16 v353, v166

    move/16 v354, v167

    move/16 v355, v168

    move/16 v356, v169

    move/16 v357, v170

    move/16 v358, v171

    move/16 v359, v172

    move/16 v360, v173

    move/16 v361, v174

    move/16 v362, v175

    move/16 v363, v176

    move/16 v364, v177

    move/16 v365, v178

    move/16 v366, v179

    move/16 v367, v180

    move/16 v368, v181

    move/16 v369, v182

    move/16 v370, v183

    move/16 v371, v184

    move/16 v372, v185

    move/16 v373, v186

    move/16 v374, v187

    move/16 v375, v188

    move/16 v376, v189

    move/16 v377, v190

    move/16 v378, v191

    move/16 v379, v192

    move/16 v380, v193

    move/16 v381, v194

    move/16 v382, v195

    move/16 v383, v196

    move/16 v384, v197

    move/16 v385, v198

    move/16 v386, v199

    move/16 v387, v200

    move/16 v388, v201

    move/16 v389, v202

    move/16 v390, v203

    move/16 v391, v204

    move/16 v392, v205

    move/16 v393, v206

    goto/16 :goto_0

    .line 944
    .end local v1    # "wzryDieTwoEndX":I
    .end local v113    # "blzyRecordX":I
    .end local v114    # "blzyRecordEndY":I
    .end local v115    # "blzyVictoryEndY":I
    .end local v116    # "cjzcRecordX":I
    .end local v117    # "cjzcRecordY":I
    .end local v118    # "cjzcRecordEndX":I
    .end local v119    # "cjzcRecordEndY":I
    .end local v120    # "cjzcErrorX":I
    .end local v121    # "cjzcErrorY":I
    .end local v122    # "cjzcErrorEndX":I
    .end local v123    # "cjzcErrorEndY":I
    .end local v124    # "engCjzcErrorX":I
    .end local v125    # "engCjzcErrorY":I
    .end local v126    # "engCjzcErrorEndX":I
    .end local v127    # "engCjzcErrorEndY":I
    .end local v128    # "blzyRecordY":I
    .end local v129    # "cjzcKillX":I
    .end local v130    # "cjzcKillY":I
    .end local v131    # "cjzcKillEndX":I
    .end local v132    # "cjzcKillEndY":I
    .end local v133    # "cjzcOverX":I
    .end local v134    # "cjzcOverY":I
    .end local v135    # "cjzcOverEndX":I
    .end local v136    # "cjzcOverEndY":I
    .end local v137    # "cjzcOverTwoX":I
    .end local v138    # "cjzcOverTwoY":I
    .end local v139    # "cjzcOverTwoEndX":I
    .end local v140    # "cjzcOverThreeX":I
    .end local v141    # "cjzcOverThreeY":I
    .end local v142    # "cjzcOverThreeEndX":I
    .end local v143    # "cjzcOverThreeEndY":I
    .end local v144    # "cjzcOverTwoEndY":I
    .end local v145    # "engCjzcOverX":I
    .end local v146    # "engCjzcOverY":I
    .end local v147    # "engCjzcOverEndX":I
    .end local v148    # "engCjzcOverEndY":I
    .end local v149    # "engCjzcOverTwoX":I
    .end local v150    # "engCjzcOverTwoY":I
    .end local v151    # "engCjzcOverTwoEndX":I
    .end local v152    # "engCjzcOverTwoEndY":I
    .end local v153    # "engCjzcOverThreeX":I
    .end local v154    # "engCjzcOverThreeY":I
    .end local v155    # "engCjzcOverThreeEndX":I
    .end local v156    # "cjzcKillTwoX":I
    .end local v157    # "cjzcKillTwoY":I
    .end local v158    # "cjzcKillTwoEndX":I
    .end local v159    # "cjzcKillTwoEndY":I
    .end local v160    # "engCjzcOverThreeEndY":I
    .end local v161    # "wzryOverX":I
    .end local v162    # "wzryOverY":I
    .end local v163    # "wzryOverEndX":I
    .end local v164    # "wzryOverEndY":I
    .end local v165    # "wzryErrorX":I
    .end local v166    # "wzryErrorY":I
    .end local v167    # "wzryErrorEndX":I
    .end local v168    # "wzryErrorEndY":I
    .end local v169    # "wzryRecordX":I
    .end local v170    # "wzryRecordY":I
    .end local v171    # "wzryRecordEndX":I
    .end local v172    # "wzryRecordEndY":I
    .end local v173    # "wzryKillX":I
    .end local v174    # "wzryKillY":I
    .end local v175    # "wzryKillEndX":I
    .end local v176    # "wzryKillEndY":I
    .end local v177    # "wzryAssistX":I
    .end local v178    # "wzryAssistY":I
    .end local v179    # "wzryAssistEndX":I
    .end local v180    # "wzryAssistEndY":I
    .end local v181    # "wzryRecordTwoX":I
    .end local v182    # "wzryRecordTwoY":I
    .end local v183    # "wzryRecordTwoEndX":I
    .end local v184    # "wzryRecordTwoEndY":I
    .end local v185    # "wzryKillTwoX":I
    .end local v186    # "wzryKillTwoY":I
    .end local v187    # "wzryKillTwoEndX":I
    .end local v188    # "wzryKillTwoEndY":I
    .end local v189    # "wzryAssistTwoX":I
    .end local v190    # "wzryAssistTwoY":I
    .end local v191    # "wzryAssistTwoEndX":I
    .end local v192    # "wzryAssistTwoEndY":I
    .end local v193    # "wzryVictoryX":I
    .end local v194    # "wzryVictoryY":I
    .end local v195    # "wzryVictoryEndX":I
    .end local v196    # "wzryVictoryEndY":I
    .end local v197    # "wzryToastX":I
    .end local v198    # "wzryToastY":I
    .end local v199    # "wzryToastEndX":I
    .end local v200    # "wzryToastEndY":I
    .end local v201    # "wzryDieX":I
    .end local v202    # "wzryDieY":I
    .end local v203    # "wzryDieEndX":I
    .end local v204    # "wzryDieEndY":I
    .end local v205    # "wzryDieTwoX":I
    .end local v206    # "wzryDieTwoY":I
    .local v3, "blzyRecordX":I
    .local v4, "blzyRecordY":I
    .local v5, "blzyRecordEndX":I
    .local v6, "blzyRecordEndY":I
    .local v7, "blzyKillX":I
    .local v8, "blzyKillY":I
    .local v9, "blzyKillEndX":I
    .local v10, "blzyKillEndY":I
    .local v11, "blzyOverX":I
    .local v12, "blzyOverY":I
    .local v13, "blzyOverEndX":I
    .local v14, "blzyOverEndY":I
    .local v15, "blzyVictoryX":I
    .restart local v16    # "blzyVictoryY":I
    .restart local v17    # "blzyVictoryEndX":I
    .restart local v18    # "blzyVictoryEndY":I
    .restart local v19    # "cjzcRecordX":I
    .restart local v20    # "cjzcRecordY":I
    .restart local v21    # "cjzcRecordEndX":I
    .restart local v22    # "cjzcRecordEndY":I
    .restart local v23    # "cjzcErrorX":I
    .restart local v24    # "cjzcErrorY":I
    .restart local v25    # "cjzcErrorEndX":I
    .restart local v26    # "cjzcErrorEndY":I
    .restart local v27    # "engCjzcErrorX":I
    .restart local v28    # "engCjzcErrorY":I
    .restart local v29    # "engCjzcErrorEndX":I
    .restart local v30    # "engCjzcErrorEndY":I
    .restart local v31    # "cjzcKillX":I
    .restart local v32    # "cjzcKillY":I
    .restart local v33    # "cjzcKillEndX":I
    .restart local v34    # "cjzcKillEndY":I
    .restart local v35    # "cjzcOverX":I
    .restart local v36    # "cjzcOverY":I
    .restart local v37    # "cjzcOverEndX":I
    .restart local v38    # "cjzcOverEndY":I
    .restart local v39    # "cjzcOverTwoX":I
    .restart local v40    # "cjzcOverTwoY":I
    .restart local v41    # "cjzcOverTwoEndX":I
    .restart local v42    # "cjzcOverTwoEndY":I
    .restart local v43    # "cjzcOverThreeX":I
    .restart local v44    # "cjzcOverThreeY":I
    .restart local v45    # "cjzcOverThreeEndX":I
    .restart local v46    # "cjzcOverThreeEndY":I
    .restart local v47    # "engCjzcOverX":I
    .restart local v48    # "engCjzcOverY":I
    .restart local v49    # "engCjzcOverEndX":I
    .restart local v50    # "engCjzcOverEndY":I
    .restart local v51    # "engCjzcOverTwoX":I
    .restart local v52    # "engCjzcOverTwoY":I
    .restart local v53    # "engCjzcOverTwoEndX":I
    .restart local v54    # "engCjzcOverTwoEndY":I
    .restart local v55    # "engCjzcOverThreeX":I
    .restart local v56    # "engCjzcOverThreeY":I
    .restart local v57    # "engCjzcOverThreeEndX":I
    .restart local v58    # "engCjzcOverThreeEndY":I
    .restart local v59    # "cjzcKillTwoX":I
    .restart local v60    # "cjzcKillTwoY":I
    .restart local v61    # "cjzcKillTwoEndX":I
    .restart local v62    # "cjzcKillTwoEndY":I
    .restart local v63    # "wzryOverX":I
    .restart local v64    # "wzryOverY":I
    .restart local v65    # "wzryOverEndX":I
    .restart local v66    # "wzryOverEndY":I
    .restart local v67    # "wzryErrorX":I
    .restart local v68    # "wzryErrorY":I
    .restart local v69    # "wzryErrorEndX":I
    .restart local v70    # "wzryErrorEndY":I
    .restart local v71    # "wzryRecordX":I
    .restart local v72    # "wzryRecordY":I
    .restart local v73    # "wzryRecordEndX":I
    .restart local v74    # "wzryRecordEndY":I
    .restart local v75    # "wzryKillX":I
    .restart local v76    # "wzryKillY":I
    .restart local v77    # "wzryKillEndX":I
    .restart local v78    # "wzryKillEndY":I
    .restart local v79    # "wzryAssistX":I
    .restart local v80    # "wzryAssistY":I
    .restart local v81    # "wzryAssistEndX":I
    .restart local v82    # "wzryAssistEndY":I
    .restart local v83    # "wzryRecordTwoX":I
    .restart local v84    # "wzryRecordTwoY":I
    .restart local v85    # "wzryRecordTwoEndX":I
    .restart local v86    # "wzryRecordTwoEndY":I
    .restart local v87    # "wzryKillTwoX":I
    .restart local v88    # "wzryKillTwoY":I
    .restart local v89    # "wzryKillTwoEndX":I
    .restart local v90    # "wzryKillTwoEndY":I
    .restart local v91    # "wzryAssistTwoX":I
    .restart local v92    # "wzryAssistTwoY":I
    .restart local v93    # "wzryAssistTwoEndX":I
    .restart local v94    # "wzryAssistTwoEndY":I
    .restart local v95    # "wzryVictoryX":I
    .restart local v96    # "wzryVictoryY":I
    .restart local v97    # "wzryVictoryEndX":I
    .restart local v98    # "wzryVictoryEndY":I
    .restart local v99    # "wzryToastX":I
    .restart local v100    # "wzryToastY":I
    .restart local v101    # "wzryToastEndX":I
    .restart local v102    # "wzryToastEndY":I
    .restart local v103    # "wzryDieX":I
    .restart local v104    # "wzryDieY":I
    .restart local v105    # "wzryDieEndX":I
    .restart local v106    # "wzryDieEndY":I
    .restart local v107    # "wzryDieTwoX":I
    .restart local v108    # "wzryDieTwoY":I
    .restart local v109    # "wzryDieTwoEndX":I
    .restart local v110    # "wzryDieTwoEndY":I
    :cond_1
    move/from16 v112, v3

    .line 944
    .end local v3    # "blzyRecordX":I
    .restart local v112    # "blzyRecordX":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndX:I

    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 945
    .end local v112    # "blzyRecordX":I
    .local v1, "blzyRecordX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v207, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordEndY:I

    .line 945
    .end local v1    # "blzyRecordX":I
    .local v207, "blzyRecordX":I
    sub-int/2addr v3, v1

    .line 946
    .end local v4    # "blzyRecordY":I
    .local v3, "blzyRecordY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordX:I

    sub-int/2addr v1, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int v4, v1, v4

    .line 947
    .end local v5    # "blzyRecordEndX":I
    .local v4, "blzyRecordEndX":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordY:I

    sub-int/2addr v1, v5

    .line 949
    .end local v6    # "blzyRecordEndY":I
    .local v1, "blzyRecordEndY":I
    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndX:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v5, v6

    .line 950
    .end local v7    # "blzyKillX":I
    .local v5, "blzyKillX":I
    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillEndY:I

    sub-int/2addr v6, v7

    .line 951
    .end local v8    # "blzyKillY":I
    .local v6, "blzyKillY":I
    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillX:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v7, v8

    .line 952
    .end local v9    # "blzyKillEndX":I
    .local v7, "blzyKillEndX":I
    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillY:I

    sub-int/2addr v8, v9

    .line 954
    .end local v10    # "blzyKillEndY":I
    .local v8, "blzyKillEndY":I
    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndX:I

    sub-int/2addr v9, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v9, v10

    .line 955
    .end local v11    # "blzyOverX":I
    .local v9, "blzyOverX":I
    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v11, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverEndY:I

    sub-int/2addr v10, v11

    .line 956
    .end local v12    # "blzyOverY":I
    .local v10, "blzyOverY":I
    iget v11, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v12, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverX:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v11, v12

    .line 957
    .end local v13    # "blzyOverEndX":I
    .local v11, "blzyOverEndX":I
    iget v12, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v13, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverY:I

    sub-int/2addr v12, v13

    .line 959
    .end local v14    # "blzyOverEndY":I
    .local v12, "blzyOverEndY":I
    iget v13, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    iget v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndX:I

    sub-int/2addr v13, v14

    iget v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v13, v14

    .line 960
    .end local v15    # "blzyVictoryX":I
    .local v13, "blzyVictoryX":I
    iget v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    iget v15, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryEndY:I

    sub-int/2addr v14, v15

    .line 961
    .end local v16    # "blzyVictoryY":I
    .local v14, "blzyVictoryY":I
    iget v15, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v208, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryX:I

    .line 961
    .end local v1    # "blzyRecordEndY":I
    .local v208, "blzyRecordEndY":I
    sub-int/2addr v15, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v15, v1

    .line 962
    .end local v17    # "blzyVictoryEndX":I
    .local v15, "blzyVictoryEndX":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v209, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryY:I

    .line 962
    .end local v3    # "blzyRecordY":I
    .local v209, "blzyRecordY":I
    sub-int/2addr v1, v3

    .line 964
    .end local v18    # "blzyVictoryEndY":I
    .local v1, "blzyVictoryEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v210, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndX:I

    .line 964
    .end local v1    # "blzyVictoryEndY":I
    .local v210, "blzyVictoryEndY":I
    sub-int v1, v3, v1

    .line 965
    .end local v19    # "cjzcRecordX":I
    .local v1, "cjzcRecordX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v211, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordEndY:I

    .line 965
    .end local v1    # "cjzcRecordX":I
    .local v211, "cjzcRecordX":I
    sub-int v1, v3, v1

    .line 966
    .end local v20    # "cjzcRecordY":I
    .local v1, "cjzcRecordY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v212, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordX:I

    .line 966
    .end local v1    # "cjzcRecordY":I
    .local v212, "cjzcRecordY":I
    sub-int v1, v3, v1

    .line 967
    .end local v21    # "cjzcRecordEndX":I
    .local v1, "cjzcRecordEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v213, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordY:I

    .line 967
    .end local v1    # "cjzcRecordEndX":I
    .local v213, "cjzcRecordEndX":I
    sub-int v1, v3, v1

    .line 969
    .end local v22    # "cjzcRecordEndY":I
    .local v1, "cjzcRecordEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v214, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndX:I

    .line 969
    .end local v1    # "cjzcRecordEndY":I
    .local v214, "cjzcRecordEndY":I
    sub-int v1, v3, v1

    .line 970
    .end local v23    # "cjzcErrorX":I
    .local v1, "cjzcErrorX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v215, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorEndY:I

    .line 970
    .end local v1    # "cjzcErrorX":I
    .local v215, "cjzcErrorX":I
    sub-int v1, v3, v1

    .line 971
    .end local v24    # "cjzcErrorY":I
    .local v1, "cjzcErrorY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v216, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorX:I

    .line 971
    .end local v1    # "cjzcErrorY":I
    .local v216, "cjzcErrorY":I
    sub-int v1, v3, v1

    .line 972
    .end local v25    # "cjzcErrorEndX":I
    .local v1, "cjzcErrorEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v217, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorY:I

    .line 972
    .end local v1    # "cjzcErrorEndX":I
    .local v217, "cjzcErrorEndX":I
    sub-int v1, v3, v1

    .line 974
    .end local v26    # "cjzcErrorEndY":I
    .local v1, "cjzcErrorEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v218, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndX:I

    .line 974
    .end local v1    # "cjzcErrorEndY":I
    .local v218, "cjzcErrorEndY":I
    sub-int v1, v3, v1

    .line 975
    .end local v27    # "engCjzcErrorX":I
    .local v1, "engCjzcErrorX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v219, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorEndY:I

    .line 975
    .end local v1    # "engCjzcErrorX":I
    .local v219, "engCjzcErrorX":I
    sub-int v1, v3, v1

    .line 976
    .end local v28    # "engCjzcErrorY":I
    .local v1, "engCjzcErrorY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v220, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorX:I

    .line 976
    .end local v1    # "engCjzcErrorY":I
    .local v220, "engCjzcErrorY":I
    sub-int v1, v3, v1

    .line 977
    .end local v29    # "engCjzcErrorEndX":I
    .local v1, "engCjzcErrorEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v221, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorY:I

    .line 977
    .end local v1    # "engCjzcErrorEndX":I
    .local v221, "engCjzcErrorEndX":I
    sub-int v1, v3, v1

    .line 979
    .end local v30    # "engCjzcErrorEndY":I
    .local v1, "engCjzcErrorEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v222, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndX:I

    .line 979
    .end local v1    # "engCjzcErrorEndY":I
    .local v222, "engCjzcErrorEndY":I
    sub-int/2addr v3, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int v1, v3, v1

    .line 980
    .end local v31    # "cjzcKillX":I
    .local v1, "cjzcKillX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v223, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillEndY:I

    .line 980
    .end local v1    # "cjzcKillX":I
    .local v223, "cjzcKillX":I
    sub-int/2addr v3, v1

    .line 981
    .end local v32    # "cjzcKillY":I
    .local v3, "cjzcKillY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v224, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillX:I

    .line 981
    .end local v3    # "cjzcKillY":I
    .local v224, "cjzcKillY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 982
    .end local v33    # "cjzcKillEndX":I
    .local v1, "cjzcKillEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v225, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillY:I

    .line 982
    .end local v1    # "cjzcKillEndX":I
    .local v225, "cjzcKillEndX":I
    sub-int/2addr v3, v1

    .line 984
    .end local v34    # "cjzcKillEndY":I
    .local v3, "cjzcKillEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v226, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndX:I

    .line 984
    .end local v3    # "cjzcKillEndY":I
    .local v226, "cjzcKillEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v1, v3

    .line 985
    .end local v35    # "cjzcOverX":I
    .local v1, "cjzcOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v227, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverEndY:I

    .line 985
    .end local v1    # "cjzcOverX":I
    .local v227, "cjzcOverX":I
    sub-int/2addr v3, v1

    .line 986
    .end local v36    # "cjzcOverY":I
    .local v3, "cjzcOverY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v228, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverX:I

    .line 986
    .end local v3    # "cjzcOverY":I
    .local v228, "cjzcOverY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v1, v3

    .line 987
    .end local v37    # "cjzcOverEndX":I
    .local v1, "cjzcOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v229, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverY:I

    .line 987
    .end local v1    # "cjzcOverEndX":I
    .local v229, "cjzcOverEndX":I
    sub-int/2addr v3, v1

    .line 989
    .end local v38    # "cjzcOverEndY":I
    .local v3, "cjzcOverEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v230, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndX:I

    .line 989
    .end local v3    # "cjzcOverEndY":I
    .local v230, "cjzcOverEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 990
    .end local v39    # "cjzcOverTwoX":I
    .local v1, "cjzcOverTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v231, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoEndY:I

    .line 990
    .end local v1    # "cjzcOverTwoX":I
    .local v231, "cjzcOverTwoX":I
    sub-int/2addr v3, v1

    .line 991
    .end local v40    # "cjzcOverTwoY":I
    .local v3, "cjzcOverTwoY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v232, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoX:I

    .line 991
    .end local v3    # "cjzcOverTwoY":I
    .local v232, "cjzcOverTwoY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 992
    .end local v41    # "cjzcOverTwoEndX":I
    .local v1, "cjzcOverTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v233, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoY:I

    .line 992
    .end local v1    # "cjzcOverTwoEndX":I
    .local v233, "cjzcOverTwoEndX":I
    sub-int/2addr v3, v1

    .line 994
    .end local v42    # "cjzcOverTwoEndY":I
    .local v3, "cjzcOverTwoEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    sub-int v1, v1, v45

    .line 995
    .end local v43    # "cjzcOverThreeX":I
    .local v1, "cjzcOverThreeX":I
    move/from16 v234, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 995
    .end local v3    # "cjzcOverTwoEndY":I
    .local v234, "cjzcOverTwoEndY":I
    sub-int v3, v3, v46

    .line 996
    .end local v44    # "cjzcOverThreeY":I
    .local v3, "cjzcOverThreeY":I
    move/from16 v235, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 996
    .end local v4    # "blzyRecordEndX":I
    .local v235, "blzyRecordEndX":I
    sub-int/2addr v4, v1

    .line 997
    .end local v45    # "cjzcOverThreeEndX":I
    .local v4, "cjzcOverThreeEndX":I
    move/from16 v236, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 997
    .end local v1    # "cjzcOverThreeX":I
    .local v236, "cjzcOverThreeX":I
    sub-int/2addr v1, v3

    .line 999
    .end local v46    # "cjzcOverThreeEndY":I
    .local v1, "cjzcOverThreeEndY":I
    move/from16 v237, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 999
    .end local v1    # "cjzcOverThreeEndY":I
    .local v237, "cjzcOverThreeEndY":I
    move/from16 v238, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndX:I

    .line 999
    .end local v3    # "cjzcOverThreeY":I
    .local v238, "cjzcOverThreeY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v1, v3

    .line 1000
    .end local v47    # "engCjzcOverX":I
    .local v1, "engCjzcOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v239, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverEndY:I

    .line 1000
    .end local v1    # "engCjzcOverX":I
    .local v239, "engCjzcOverX":I
    sub-int/2addr v3, v1

    .line 1001
    .end local v48    # "engCjzcOverY":I
    .local v3, "engCjzcOverY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v240, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverX:I

    .line 1001
    .end local v3    # "engCjzcOverY":I
    .local v240, "engCjzcOverY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayDefferX:I

    sub-int/2addr v1, v3

    .line 1002
    .end local v49    # "engCjzcOverEndX":I
    .local v1, "engCjzcOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v241, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverY:I

    .line 1002
    .end local v1    # "engCjzcOverEndX":I
    .local v241, "engCjzcOverEndX":I
    sub-int/2addr v3, v1

    .line 1004
    .end local v50    # "engCjzcOverEndY":I
    .local v3, "engCjzcOverEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    sub-int v1, v1, v53

    .line 1005
    .end local v51    # "engCjzcOverTwoX":I
    .local v1, "engCjzcOverTwoX":I
    move/from16 v242, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1005
    .end local v3    # "engCjzcOverEndY":I
    .local v242, "engCjzcOverEndY":I
    sub-int v3, v3, v54

    .line 1006
    .end local v52    # "engCjzcOverTwoY":I
    .local v3, "engCjzcOverTwoY":I
    move/from16 v243, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1006
    .end local v4    # "cjzcOverThreeEndX":I
    .local v243, "cjzcOverThreeEndX":I
    sub-int/2addr v4, v1

    .line 1007
    .end local v53    # "engCjzcOverTwoEndX":I
    .local v4, "engCjzcOverTwoEndX":I
    move/from16 v244, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1007
    .end local v1    # "engCjzcOverTwoX":I
    .local v244, "engCjzcOverTwoX":I
    sub-int/2addr v1, v3

    .line 1009
    .end local v54    # "engCjzcOverTwoEndY":I
    .local v1, "engCjzcOverTwoEndY":I
    move/from16 v245, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1009
    .end local v1    # "engCjzcOverTwoEndY":I
    .local v245, "engCjzcOverTwoEndY":I
    sub-int v1, v1, v57

    .line 1010
    .end local v55    # "engCjzcOverThreeX":I
    .local v1, "engCjzcOverThreeX":I
    move/from16 v246, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1010
    .end local v3    # "engCjzcOverTwoY":I
    .local v246, "engCjzcOverTwoY":I
    sub-int v3, v3, v58

    .line 1011
    .end local v56    # "engCjzcOverThreeY":I
    .local v3, "engCjzcOverThreeY":I
    move/from16 v247, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1011
    .end local v4    # "engCjzcOverTwoEndX":I
    .local v247, "engCjzcOverTwoEndX":I
    sub-int/2addr v4, v1

    .line 1012
    .end local v57    # "engCjzcOverThreeEndX":I
    .local v4, "engCjzcOverThreeEndX":I
    move/from16 v248, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1012
    .end local v1    # "engCjzcOverThreeX":I
    .local v248, "engCjzcOverThreeX":I
    sub-int/2addr v1, v3

    .line 1014
    .end local v58    # "engCjzcOverThreeEndY":I
    .local v1, "engCjzcOverThreeEndY":I
    move/from16 v249, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    .line 1014
    .end local v1    # "engCjzcOverThreeEndY":I
    .local v249, "engCjzcOverThreeEndY":I
    move/from16 v250, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndX:I

    .line 1014
    .end local v3    # "engCjzcOverThreeY":I
    .local v250, "engCjzcOverThreeY":I
    sub-int/2addr v1, v3

    .line 1015
    .end local v59    # "cjzcKillTwoX":I
    .local v1, "cjzcKillTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v251, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoEndY:I

    .line 1015
    .end local v1    # "cjzcKillTwoX":I
    .local v251, "cjzcKillTwoX":I
    sub-int v1, v3, v1

    .line 1016
    .end local v60    # "cjzcKillTwoY":I
    .local v1, "cjzcKillTwoY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v252, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoX:I

    .line 1016
    .end local v1    # "cjzcKillTwoY":I
    .local v252, "cjzcKillTwoY":I
    sub-int v1, v3, v1

    .line 1017
    .end local v61    # "cjzcKillTwoEndX":I
    .local v1, "cjzcKillTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v253, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoY:I

    .line 1017
    .end local v1    # "cjzcKillTwoEndX":I
    .local v253, "cjzcKillTwoEndX":I
    sub-int v1, v3, v1

    .line 1019
    .end local v62    # "cjzcKillTwoEndY":I
    .local v1, "cjzcKillTwoEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/from16 v254, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndX:I

    .line 1019
    .end local v1    # "cjzcKillTwoEndY":I
    .local v254, "cjzcKillTwoEndY":I
    sub-int/2addr v3, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int v1, v3, v1

    .line 1020
    .end local v63    # "wzryOverX":I
    .local v1, "wzryOverX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/from16 v255, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverEndY:I

    .line 1020
    .end local v1    # "wzryOverX":I
    .local v255, "wzryOverX":I
    sub-int/2addr v3, v1

    .line 1021
    .end local v64    # "wzryOverY":I
    .local v3, "wzryOverY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v256, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverX:I

    .line 1021
    .end local v3    # "wzryOverY":I
    .local v256, "wzryOverY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1022
    .end local v65    # "wzryOverEndX":I
    .local v1, "wzryOverEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v257, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverY:I

    .line 1022
    .end local v1    # "wzryOverEndX":I
    .local v257, "wzryOverEndX":I
    sub-int/2addr v3, v1

    .line 1024
    .end local v66    # "wzryOverEndY":I
    .local v3, "wzryOverEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v258, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndX:I

    .line 1024
    .end local v3    # "wzryOverEndY":I
    .local v258, "wzryOverEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1025
    .end local v67    # "wzryErrorX":I
    .local v1, "wzryErrorX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v259, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorEndY:I

    .line 1025
    .end local v1    # "wzryErrorX":I
    .local v259, "wzryErrorX":I
    sub-int/2addr v3, v1

    .line 1026
    .end local v68    # "wzryErrorY":I
    .local v3, "wzryErrorY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v260, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorX:I

    .line 1026
    .end local v3    # "wzryErrorY":I
    .local v260, "wzryErrorY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1027
    .end local v69    # "wzryErrorEndX":I
    .local v1, "wzryErrorEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v261, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorY:I

    .line 1027
    .end local v1    # "wzryErrorEndX":I
    .local v261, "wzryErrorEndX":I
    sub-int/2addr v3, v1

    .line 1029
    .end local v70    # "wzryErrorEndY":I
    .local v3, "wzryErrorEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v262, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndX:I

    .line 1029
    .end local v3    # "wzryErrorEndY":I
    .local v262, "wzryErrorEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1030
    .end local v71    # "wzryRecordX":I
    .local v1, "wzryRecordX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v263, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordEndY:I

    .line 1030
    .end local v1    # "wzryRecordX":I
    .local v263, "wzryRecordX":I
    sub-int/2addr v3, v1

    .line 1031
    .end local v72    # "wzryRecordY":I
    .local v3, "wzryRecordY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v264, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordX:I

    .line 1031
    .end local v3    # "wzryRecordY":I
    .local v264, "wzryRecordY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1032
    .end local v73    # "wzryRecordEndX":I
    .local v1, "wzryRecordEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v265, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordY:I

    .line 1032
    .end local v1    # "wzryRecordEndX":I
    .local v265, "wzryRecordEndX":I
    sub-int/2addr v3, v1

    .line 1034
    .end local v74    # "wzryRecordEndY":I
    .local v3, "wzryRecordEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v266, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndX:I

    .line 1034
    .end local v3    # "wzryRecordEndY":I
    .local v266, "wzryRecordEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1035
    .end local v75    # "wzryKillX":I
    .local v1, "wzryKillX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v267, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillEndY:I

    .line 1035
    .end local v1    # "wzryKillX":I
    .local v267, "wzryKillX":I
    sub-int/2addr v3, v1

    .line 1036
    .end local v76    # "wzryKillY":I
    .local v3, "wzryKillY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v268, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillX:I

    .line 1036
    .end local v3    # "wzryKillY":I
    .local v268, "wzryKillY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1037
    .end local v77    # "wzryKillEndX":I
    .local v1, "wzryKillEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v269, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillY:I

    .line 1037
    .end local v1    # "wzryKillEndX":I
    .local v269, "wzryKillEndX":I
    sub-int/2addr v3, v1

    .line 1039
    .end local v78    # "wzryKillEndY":I
    .local v3, "wzryKillEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v270, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndX:I

    .line 1039
    .end local v3    # "wzryKillEndY":I
    .local v270, "wzryKillEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1040
    .end local v79    # "wzryAssistX":I
    .local v1, "wzryAssistX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v271, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistEndY:I

    .line 1040
    .end local v1    # "wzryAssistX":I
    .local v271, "wzryAssistX":I
    sub-int/2addr v3, v1

    .line 1041
    .end local v80    # "wzryAssistY":I
    .local v3, "wzryAssistY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v272, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistX:I

    .line 1041
    .end local v3    # "wzryAssistY":I
    .local v272, "wzryAssistY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1042
    .end local v81    # "wzryAssistEndX":I
    .local v1, "wzryAssistEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v273, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistY:I

    .line 1042
    .end local v1    # "wzryAssistEndX":I
    .local v273, "wzryAssistEndX":I
    sub-int/2addr v3, v1

    .line 1044
    .end local v82    # "wzryAssistEndY":I
    .local v3, "wzryAssistEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v274, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndX:I

    .line 1044
    .end local v3    # "wzryAssistEndY":I
    .local v274, "wzryAssistEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1045
    .end local v83    # "wzryRecordTwoX":I
    .local v1, "wzryRecordTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v275, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoEndY:I

    .line 1045
    .end local v1    # "wzryRecordTwoX":I
    .local v275, "wzryRecordTwoX":I
    sub-int/2addr v3, v1

    .line 1046
    .end local v84    # "wzryRecordTwoY":I
    .local v3, "wzryRecordTwoY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v276, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoX:I

    .line 1046
    .end local v3    # "wzryRecordTwoY":I
    .local v276, "wzryRecordTwoY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1047
    .end local v85    # "wzryRecordTwoEndX":I
    .local v1, "wzryRecordTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v277, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoY:I

    .line 1047
    .end local v1    # "wzryRecordTwoEndX":I
    .local v277, "wzryRecordTwoEndX":I
    sub-int/2addr v3, v1

    .line 1049
    .end local v86    # "wzryRecordTwoEndY":I
    .local v3, "wzryRecordTwoEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v278, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndX:I

    .line 1049
    .end local v3    # "wzryRecordTwoEndY":I
    .local v278, "wzryRecordTwoEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1050
    .end local v87    # "wzryKillTwoX":I
    .local v1, "wzryKillTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v279, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoEndY:I

    .line 1050
    .end local v1    # "wzryKillTwoX":I
    .local v279, "wzryKillTwoX":I
    sub-int/2addr v3, v1

    .line 1051
    .end local v88    # "wzryKillTwoY":I
    .local v3, "wzryKillTwoY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v280, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoX:I

    .line 1051
    .end local v3    # "wzryKillTwoY":I
    .local v280, "wzryKillTwoY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1052
    .end local v89    # "wzryKillTwoEndX":I
    .local v1, "wzryKillTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v281, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoY:I

    .line 1052
    .end local v1    # "wzryKillTwoEndX":I
    .local v281, "wzryKillTwoEndX":I
    sub-int/2addr v3, v1

    .line 1054
    .end local v90    # "wzryKillTwoEndY":I
    .local v3, "wzryKillTwoEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v282, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndX:I

    .line 1054
    .end local v3    # "wzryKillTwoEndY":I
    .local v282, "wzryKillTwoEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1055
    .end local v91    # "wzryAssistTwoX":I
    .local v1, "wzryAssistTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v283, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoEndY:I

    .line 1055
    .end local v1    # "wzryAssistTwoX":I
    .local v283, "wzryAssistTwoX":I
    sub-int/2addr v3, v1

    .line 1056
    .end local v92    # "wzryAssistTwoY":I
    .local v3, "wzryAssistTwoY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v284, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoX:I

    .line 1056
    .end local v3    # "wzryAssistTwoY":I
    .local v284, "wzryAssistTwoY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1057
    .end local v93    # "wzryAssistTwoEndX":I
    .local v1, "wzryAssistTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v285, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoY:I

    .line 1057
    .end local v1    # "wzryAssistTwoEndX":I
    .local v285, "wzryAssistTwoEndX":I
    sub-int/2addr v3, v1

    .line 1059
    .end local v94    # "wzryAssistTwoEndY":I
    .local v3, "wzryAssistTwoEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v286, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryX:I

    .line 1059
    .end local v3    # "wzryAssistTwoEndY":I
    .local v286, "wzryAssistTwoEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1060
    .end local v95    # "wzryVictoryX":I
    .local v1, "wzryVictoryX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v287, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryY:I

    .line 1060
    .end local v1    # "wzryVictoryX":I
    .local v287, "wzryVictoryX":I
    sub-int/2addr v3, v1

    .line 1061
    .end local v96    # "wzryVictoryY":I
    .local v3, "wzryVictoryY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v288, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndX:I

    .line 1061
    .end local v3    # "wzryVictoryY":I
    .local v288, "wzryVictoryY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1062
    .end local v97    # "wzryVictoryEndX":I
    .local v1, "wzryVictoryEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v289, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryEndY:I

    .line 1062
    .end local v1    # "wzryVictoryEndX":I
    .local v289, "wzryVictoryEndX":I
    sub-int/2addr v3, v1

    .line 1064
    .end local v98    # "wzryVictoryEndY":I
    .local v3, "wzryVictoryEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v290, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastX:I

    .line 1064
    .end local v3    # "wzryVictoryEndY":I
    .local v290, "wzryVictoryEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1065
    .end local v99    # "wzryToastX":I
    .local v1, "wzryToastX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v291, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastY:I

    .line 1065
    .end local v1    # "wzryToastX":I
    .local v291, "wzryToastX":I
    sub-int/2addr v3, v1

    .line 1066
    .end local v100    # "wzryToastY":I
    .local v3, "wzryToastY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v292, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndX:I

    .line 1066
    .end local v3    # "wzryToastY":I
    .local v292, "wzryToastY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1067
    .end local v101    # "wzryToastEndX":I
    .local v1, "wzryToastEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v293, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastEndY:I

    .line 1067
    .end local v1    # "wzryToastEndX":I
    .local v293, "wzryToastEndX":I
    sub-int/2addr v3, v1

    .line 1069
    .end local v102    # "wzryToastEndY":I
    .local v3, "wzryToastEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v294, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieX:I

    .line 1069
    .end local v3    # "wzryToastEndY":I
    .local v294, "wzryToastEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1070
    .end local v103    # "wzryDieX":I
    .local v1, "wzryDieX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v295, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieY:I

    .line 1070
    .end local v1    # "wzryDieX":I
    .local v295, "wzryDieX":I
    sub-int/2addr v3, v1

    .line 1071
    .end local v104    # "wzryDieY":I
    .local v3, "wzryDieY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v296, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndX:I

    .line 1071
    .end local v3    # "wzryDieY":I
    .local v296, "wzryDieY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1072
    .end local v105    # "wzryDieEndX":I
    .local v1, "wzryDieEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v297, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieEndY:I

    .line 1072
    .end local v1    # "wzryDieEndX":I
    .local v297, "wzryDieEndX":I
    sub-int/2addr v3, v1

    .line 1074
    .end local v106    # "wzryDieEndY":I
    .local v3, "wzryDieEndY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v298, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoX:I

    .line 1074
    .end local v3    # "wzryDieEndY":I
    .local v298, "wzryDieEndY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1075
    .end local v107    # "wzryDieTwoX":I
    .local v1, "wzryDieTwoX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v299, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoY:I

    .line 1075
    .end local v1    # "wzryDieTwoX":I
    .local v299, "wzryDieTwoX":I
    sub-int/2addr v3, v1

    .line 1076
    .end local v108    # "wzryDieTwoY":I
    .local v3, "wzryDieTwoY":I
    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayWidth:I

    move/16 v300, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndX:I

    .line 1076
    .end local v3    # "wzryDieTwoY":I
    .local v300, "wzryDieTwoY":I
    sub-int/2addr v1, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayMeanX:I

    sub-int/2addr v1, v3

    .line 1077
    .end local v109    # "wzryDieTwoEndX":I
    .local v1, "wzryDieTwoEndX":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDisplayHeight:I

    move/16 v301, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoEndY:I

    .line 1077
    .end local v1    # "wzryDieTwoEndX":I
    .local v301, "wzryDieTwoEndX":I
    sub-int/2addr v3, v1

    .line 1080
    .end local v110    # "wzryDieTwoEndY":I
    .local v3, "wzryDieTwoEndY":I
    move/16 v395, v3

    move/16 v306, v4

    move/16 v336, v5

    move/16 v337, v6

    move/16 v338, v7

    move/16 v339, v8

    move/16 v340, v9

    move/16 v341, v10

    move/16 v342, v11

    move/16 v343, v12

    move/16 v344, v13

    move/16 v345, v14

    move/16 v346, v15

    move/16 v332, v207

    move/16 v335, v208

    move/16 v333, v209

    move/16 v347, v210

    move/from16 v1, v211

    move/from16 v3, v212

    move/from16 v4, v213

    move/from16 v5, v214

    move/16 v308, v215

    move/16 v309, v216

    move/16 v310, v217

    move/16 v311, v218

    move/from16 v6, v219

    move/from16 v7, v220

    move/from16 v8, v221

    move/from16 v9, v222

    move/16 v324, v223

    move/16 v325, v224

    move/16 v326, v225

    move/16 v327, v226

    move/16 v312, v227

    move/16 v313, v228

    move/16 v314, v229

    move/16 v315, v230

    move/16 v316, v231

    move/16 v317, v232

    move/16 v318, v233

    move/16 v319, v234

    move/16 v334, v235

    move/16 v320, v236

    move/16 v323, v237

    move/16 v321, v238

    move/from16 v10, v239

    move/from16 v11, v240

    move/from16 v12, v241

    move/from16 v13, v242

    move/16 v322, v243

    move/16 v302, v244

    move/from16 v14, v245

    move/from16 v15, v246

    move/16 v303, v247

    move/16 v304, v248

    move/16 v307, v249

    move/16 v305, v250

    move/16 v328, v251

    move/16 v329, v252

    move/16 v330, v253

    move/16 v331, v254

    move/16 v348, v255

    move/16 v349, v256

    move/16 v350, v257

    move/16 v351, v258

    move/16 v352, v259

    move/16 v353, v260

    move/16 v354, v261

    move/16 v355, v262

    move/16 v356, v263

    move/16 v357, v264

    move/16 v358, v265

    move/16 v359, v266

    move/16 v360, v267

    move/16 v361, v268

    move/16 v362, v269

    move/16 v363, v270

    move/16 v364, v271

    move/16 v365, v272

    move/16 v366, v273

    move/16 v367, v274

    move/16 v368, v275

    move/16 v369, v276

    move/16 v370, v277

    move/16 v371, v278

    move/16 v372, v279

    move/16 v373, v280

    move/16 v374, v281

    move/16 v375, v282

    move/16 v376, v283

    move/16 v377, v284

    move/16 v378, v285

    move/16 v379, v286

    move/16 v380, v287

    move/16 v381, v288

    move/16 v382, v289

    move/16 v383, v290

    move/16 v384, v291

    move/16 v385, v292

    move/16 v386, v293

    move/16 v387, v294

    move/16 v388, v295

    move/16 v389, v296

    move/16 v390, v297

    move/16 v391, v298

    move/16 v392, v299

    move/16 v393, v300

    move/16 v394, v301

    .end local v207    # "blzyRecordX":I
    .end local v208    # "blzyRecordEndY":I
    .end local v209    # "blzyRecordY":I
    .end local v210    # "blzyVictoryEndY":I
    .end local v211    # "cjzcRecordX":I
    .end local v212    # "cjzcRecordY":I
    .end local v213    # "cjzcRecordEndX":I
    .end local v214    # "cjzcRecordEndY":I
    .end local v215    # "cjzcErrorX":I
    .end local v216    # "cjzcErrorY":I
    .end local v217    # "cjzcErrorEndX":I
    .end local v218    # "cjzcErrorEndY":I
    .end local v219    # "engCjzcErrorX":I
    .end local v220    # "engCjzcErrorY":I
    .end local v221    # "engCjzcErrorEndX":I
    .end local v222    # "engCjzcErrorEndY":I
    .end local v223    # "cjzcKillX":I
    .end local v224    # "cjzcKillY":I
    .end local v225    # "cjzcKillEndX":I
    .end local v226    # "cjzcKillEndY":I
    .end local v227    # "cjzcOverX":I
    .end local v228    # "cjzcOverY":I
    .end local v229    # "cjzcOverEndX":I
    .end local v230    # "cjzcOverEndY":I
    .end local v231    # "cjzcOverTwoX":I
    .end local v232    # "cjzcOverTwoY":I
    .end local v233    # "cjzcOverTwoEndX":I
    .end local v234    # "cjzcOverTwoEndY":I
    .end local v235    # "blzyRecordEndX":I
    .end local v236    # "cjzcOverThreeX":I
    .end local v237    # "cjzcOverThreeEndY":I
    .end local v238    # "cjzcOverThreeY":I
    .end local v239    # "engCjzcOverX":I
    .end local v240    # "engCjzcOverY":I
    .end local v241    # "engCjzcOverEndX":I
    .end local v242    # "engCjzcOverEndY":I
    .end local v243    # "cjzcOverThreeEndX":I
    .end local v244    # "engCjzcOverTwoX":I
    .end local v245    # "engCjzcOverTwoEndY":I
    .end local v246    # "engCjzcOverTwoY":I
    .end local v247    # "engCjzcOverTwoEndX":I
    .end local v248    # "engCjzcOverThreeX":I
    .end local v249    # "engCjzcOverThreeEndY":I
    .end local v250    # "engCjzcOverThreeY":I
    .end local v251    # "cjzcKillTwoX":I
    .end local v252    # "cjzcKillTwoY":I
    .end local v253    # "cjzcKillTwoEndX":I
    .end local v254    # "cjzcKillTwoEndY":I
    .end local v255    # "wzryOverX":I
    .end local v256    # "wzryOverY":I
    .end local v257    # "wzryOverEndX":I
    .end local v258    # "wzryOverEndY":I
    .end local v259    # "wzryErrorX":I
    .end local v260    # "wzryErrorY":I
    .end local v261    # "wzryErrorEndX":I
    .end local v262    # "wzryErrorEndY":I
    .end local v263    # "wzryRecordX":I
    .end local v264    # "wzryRecordY":I
    .end local v265    # "wzryRecordEndX":I
    .end local v266    # "wzryRecordEndY":I
    .end local v267    # "wzryKillX":I
    .end local v268    # "wzryKillY":I
    .end local v269    # "wzryKillEndX":I
    .end local v270    # "wzryKillEndY":I
    .end local v271    # "wzryAssistX":I
    .end local v272    # "wzryAssistY":I
    .end local v273    # "wzryAssistEndX":I
    .end local v274    # "wzryAssistEndY":I
    .end local v275    # "wzryRecordTwoX":I
    .end local v276    # "wzryRecordTwoY":I
    .end local v277    # "wzryRecordTwoEndX":I
    .end local v278    # "wzryRecordTwoEndY":I
    .end local v279    # "wzryKillTwoX":I
    .end local v280    # "wzryKillTwoY":I
    .end local v281    # "wzryKillTwoEndX":I
    .end local v282    # "wzryKillTwoEndY":I
    .end local v283    # "wzryAssistTwoX":I
    .end local v284    # "wzryAssistTwoY":I
    .end local v285    # "wzryAssistTwoEndX":I
    .end local v286    # "wzryAssistTwoEndY":I
    .end local v287    # "wzryVictoryX":I
    .end local v288    # "wzryVictoryY":I
    .end local v289    # "wzryVictoryEndX":I
    .end local v290    # "wzryVictoryEndY":I
    .end local v291    # "wzryToastX":I
    .end local v292    # "wzryToastY":I
    .end local v293    # "wzryToastEndX":I
    .end local v294    # "wzryToastEndY":I
    .end local v295    # "wzryDieX":I
    .end local v296    # "wzryDieY":I
    .end local v297    # "wzryDieEndX":I
    .end local v298    # "wzryDieEndY":I
    .end local v299    # "wzryDieTwoX":I
    .end local v300    # "wzryDieTwoY":I
    .end local v301    # "wzryDieTwoEndX":I
    .local v1, "cjzcRecordX":I
    .local v3, "cjzcRecordY":I
    .local v4, "cjzcRecordEndX":I
    .local v5, "cjzcRecordEndY":I
    .local v6, "engCjzcErrorX":I
    .local v7, "engCjzcErrorY":I
    .local v8, "engCjzcErrorEndX":I
    .local v9, "engCjzcErrorEndY":I
    .local v10, "engCjzcOverX":I
    .local v11, "engCjzcOverY":I
    .local v12, "engCjzcOverEndX":I
    .local v13, "engCjzcOverEndY":I
    .local v14, "engCjzcOverTwoEndY":I
    .local v15, "engCjzcOverTwoY":I
    .local v302, "engCjzcOverTwoX":I
    .local v303, "engCjzcOverTwoEndX":I
    .local v304, "engCjzcOverThreeX":I
    .local v305, "engCjzcOverThreeY":I
    .local v306, "engCjzcOverThreeEndX":I
    .local v307, "engCjzcOverThreeEndY":I
    .local v308, "cjzcErrorX":I
    .local v309, "cjzcErrorY":I
    .local v310, "cjzcErrorEndX":I
    .local v311, "cjzcErrorEndY":I
    .local v312, "cjzcOverX":I
    .local v313, "cjzcOverY":I
    .local v314, "cjzcOverEndX":I
    .local v315, "cjzcOverEndY":I
    .local v316, "cjzcOverTwoX":I
    .local v317, "cjzcOverTwoY":I
    .local v318, "cjzcOverTwoEndX":I
    .local v319, "cjzcOverTwoEndY":I
    .local v320, "cjzcOverThreeX":I
    .local v321, "cjzcOverThreeY":I
    .local v322, "cjzcOverThreeEndX":I
    .local v323, "cjzcOverThreeEndY":I
    .local v324, "cjzcKillX":I
    .local v325, "cjzcKillY":I
    .local v326, "cjzcKillEndX":I
    .local v327, "cjzcKillEndY":I
    .local v328, "cjzcKillTwoX":I
    .local v329, "cjzcKillTwoY":I
    .local v330, "cjzcKillTwoEndX":I
    .local v331, "cjzcKillTwoEndY":I
    .local v332, "blzyRecordX":I
    .local v333, "blzyRecordY":I
    .local v334, "blzyRecordEndX":I
    .local v335, "blzyRecordEndY":I
    .local v336, "blzyKillX":I
    .local v337, "blzyKillY":I
    .local v338, "blzyKillEndX":I
    .local v339, "blzyKillEndY":I
    .local v340, "blzyOverX":I
    .local v341, "blzyOverY":I
    .local v342, "blzyOverEndX":I
    .local v343, "blzyOverEndY":I
    .local v344, "blzyVictoryX":I
    .local v345, "blzyVictoryY":I
    .local v346, "blzyVictoryEndX":I
    .local v347, "blzyVictoryEndY":I
    .local v348, "wzryOverX":I
    .local v349, "wzryOverY":I
    .local v350, "wzryOverEndX":I
    .local v351, "wzryOverEndY":I
    .local v352, "wzryErrorX":I
    .local v353, "wzryErrorY":I
    .local v354, "wzryErrorEndX":I
    .local v355, "wzryErrorEndY":I
    .local v356, "wzryRecordX":I
    .local v357, "wzryRecordY":I
    .local v358, "wzryRecordEndX":I
    .local v359, "wzryRecordEndY":I
    .local v360, "wzryKillX":I
    .local v361, "wzryKillY":I
    .local v362, "wzryKillEndX":I
    .local v363, "wzryKillEndY":I
    .local v364, "wzryAssistX":I
    .local v365, "wzryAssistY":I
    .local v366, "wzryAssistEndX":I
    .local v367, "wzryAssistEndY":I
    .local v368, "wzryRecordTwoX":I
    .local v369, "wzryRecordTwoY":I
    .local v370, "wzryRecordTwoEndX":I
    .local v371, "wzryRecordTwoEndY":I
    .local v372, "wzryKillTwoX":I
    .local v373, "wzryKillTwoY":I
    .local v374, "wzryKillTwoEndX":I
    .local v375, "wzryKillTwoEndY":I
    .local v376, "wzryAssistTwoX":I
    .local v377, "wzryAssistTwoY":I
    .local v378, "wzryAssistTwoEndX":I
    .local v379, "wzryAssistTwoEndY":I
    .local v380, "wzryVictoryX":I
    .local v381, "wzryVictoryY":I
    .local v382, "wzryVictoryEndX":I
    .local v383, "wzryVictoryEndY":I
    .local v384, "wzryToastX":I
    .local v385, "wzryToastY":I
    .local v386, "wzryToastEndX":I
    .local v387, "wzryToastEndY":I
    .local v388, "wzryDieX":I
    .local v389, "wzryDieY":I
    .local v390, "wzryDieEndX":I
    .local v391, "wzryDieEndY":I
    .local v392, "wzryDieTwoX":I
    .local v393, "wzryDieTwoY":I
    .local v394, "wzryDieTwoEndX":I
    .local v395, "wzryDieTwoEndY":I
    :goto_0
    move/16 v396, v14

    const-string v14, "highlights_clip"

    .line 1080
    .end local v14    # "engCjzcOverTwoEndY":I
    .local v396, "engCjzcOverTwoEndY":I
    move/16 v397, v10

    move/16 v398, v11

    const-wide/16 v10, 0x40

    .line 1080
    .end local v10    # "engCjzcOverX":I
    .end local v11    # "engCjzcOverY":I
    .local v397, "engCjzcOverX":I
    .local v398, "engCjzcOverY":I
    invoke-static {v10, v11, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1081
    iget-boolean v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartCJZC:Z

    if-nez v14, :cond_3

    iget-boolean v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartEngCJZC:Z

    if-eqz v14, :cond_2

    goto/16 :goto_1

    .line 1161
    :cond_2
    move/16 v399, v1

    move/16 v400, v3

    move/16 v403, v4

    move/16 v405, v5

    move/16 v410, v6

    move/16 v434, v7

    move/16 v435, v8

    move/16 v436, v9

    move/16 v441, v12

    move/16 v407, v302

    move/16 v406, v303

    move/16 v412, v304

    move/16 v411, v305

    move/16 v413, v306

    move/16 v414, v307

    move/16 v415, v308

    move/16 v416, v309

    move/16 v418, v310

    move/16 v419, v311

    move/16 v421, v312

    move/16 v420, v313

    move/16 v423, v314

    move/16 v424, v315

    move/16 v426, v316

    move/16 v425, v317

    move/16 v428, v318

    move/16 v429, v319

    move/16 v431, v320

    move/16 v430, v321

    move/16 v432, v322

    move/16 v433, v323

    move/16 v437, v324

    move/16 v438, v325

    move/16 v439, v326

    move/16 v440, v327

    move/16 v442, v328

    move/16 v443, v329

    move/16 v444, v330

    move/from16 v12, v331

    move/16 v409, v396

    move/from16 v14, v397

    move/16 v402, v398

    goto/16 :goto_3

    .line 1082
    :cond_3
    :goto_1
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v11, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordWidth:I

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcRecordHeight:I

    invoke-static {v14, v11, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1086
    .local v10, "cjzcRecordBitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 1088
    .local v11, "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    iget-boolean v14, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartEngCJZC:Z

    if-eqz v14, :cond_4

    .line 1089
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move/16 v399, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorWidth:I

    .line 1089
    .end local v1    # "cjzcRecordX":I
    .local v399, "cjzcRecordX":I
    move/16 v400, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcErrorHeight:I

    .line 1089
    .end local v3    # "cjzcRecordY":I
    .local v400, "cjzcRecordY":I
    invoke-static {v14, v1, v3, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1091
    .local v1, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v401, v1

    move/from16 v14, v397

    move/from16 v1, v398

    invoke-direct {v3, v14, v1, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1091
    .end local v397    # "engCjzcOverX":I
    .end local v398    # "engCjzcOverY":I
    .local v1, "engCjzcOverY":I
    .local v14, "engCjzcOverX":I
    .local v401, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    move/16 v402, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverWidth:I

    .line 1091
    .end local v1    # "engCjzcOverY":I
    .local v402, "engCjzcOverY":I
    move/16 v403, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverHeight:I

    .line 1091
    .end local v4    # "cjzcRecordEndX":I
    .local v403, "cjzcRecordEndX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1093
    .local v1, "cjzcOverBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v404, v1

    move/16 v405, v5

    move/from16 v4, v302

    move/from16 v1, v303

    move/from16 v5, v396

    invoke-direct {v3, v4, v15, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v302    # "engCjzcOverTwoX":I
    .end local v303    # "engCjzcOverTwoEndX":I
    .end local v396    # "engCjzcOverTwoEndY":I
    .local v1, "engCjzcOverTwoEndX":I
    .local v4, "engCjzcOverTwoX":I
    .local v5, "engCjzcOverTwoEndY":I
    .local v404, "cjzcOverBitmap":Landroid/graphics/Bitmap;
    .local v405, "cjzcRecordEndY":I
    move/16 v406, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoWidth:I

    .line 1093
    .end local v1    # "engCjzcOverTwoEndX":I
    .local v406, "engCjzcOverTwoEndX":I
    move/16 v407, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverTwoHeight:I

    .line 1093
    .end local v4    # "engCjzcOverTwoX":I
    .local v407, "engCjzcOverTwoX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1095
    .local v1, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v408, v1

    move/16 v409, v5

    move/16 v410, v6

    move/from16 v4, v304

    move/from16 v1, v305

    move/from16 v5, v306

    move/from16 v6, v307

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v304    # "engCjzcOverThreeX":I
    .end local v305    # "engCjzcOverThreeY":I
    .end local v306    # "engCjzcOverThreeEndX":I
    .end local v307    # "engCjzcOverThreeEndY":I
    .local v1, "engCjzcOverThreeY":I
    .local v4, "engCjzcOverThreeX":I
    .local v5, "engCjzcOverThreeEndX":I
    .local v6, "engCjzcOverThreeEndY":I
    .local v408, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .local v409, "engCjzcOverTwoEndY":I
    .local v410, "engCjzcErrorX":I
    move/16 v411, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeWidth:I

    .line 1095
    .end local v1    # "engCjzcOverThreeY":I
    .local v411, "engCjzcOverThreeY":I
    move/16 v412, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mEngCjzcOverThreeHeight:I

    .line 1095
    .end local v4    # "engCjzcOverThreeX":I
    .local v412, "engCjzcOverThreeX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1107
    .end local v11    # "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .local v1, "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    move-object v4, v1

    move/16 v413, v5

    move/16 v414, v6

    move/16 v415, v308

    move/16 v416, v309

    move/16 v418, v310

    move/16 v419, v311

    move/16 v421, v312

    move/16 v420, v313

    move/16 v423, v314

    move/16 v424, v315

    move/16 v426, v316

    move/16 v425, v317

    move/16 v428, v318

    move/16 v429, v319

    move/16 v431, v320

    move/16 v430, v321

    move/from16 v5, v322

    move/from16 v6, v323

    move-object/from16 v1, v401

    move-object/from16 v11, v404

    move-object/from16 v3, v408

    goto/16 :goto_2

    .line 1098
    .end local v14    # "engCjzcOverX":I
    .end local v399    # "cjzcRecordX":I
    .end local v400    # "cjzcRecordY":I
    .end local v401    # "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    .end local v402    # "engCjzcOverY":I
    .end local v403    # "cjzcRecordEndX":I
    .end local v404    # "cjzcOverBitmap":Landroid/graphics/Bitmap;
    .end local v405    # "cjzcRecordEndY":I
    .end local v406    # "engCjzcOverTwoEndX":I
    .end local v407    # "engCjzcOverTwoX":I
    .end local v408    # "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .end local v409    # "engCjzcOverTwoEndY":I
    .end local v410    # "engCjzcErrorX":I
    .end local v411    # "engCjzcOverThreeY":I
    .end local v412    # "engCjzcOverThreeX":I
    .local v1, "cjzcRecordX":I
    .restart local v3    # "cjzcRecordY":I
    .local v4, "cjzcRecordEndX":I
    .local v5, "cjzcRecordEndY":I
    .local v6, "engCjzcErrorX":I
    .restart local v11    # "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .restart local v302    # "engCjzcOverTwoX":I
    .restart local v303    # "engCjzcOverTwoEndX":I
    .restart local v304    # "engCjzcOverThreeX":I
    .restart local v305    # "engCjzcOverThreeY":I
    .restart local v306    # "engCjzcOverThreeEndX":I
    .restart local v307    # "engCjzcOverThreeEndY":I
    .restart local v396    # "engCjzcOverTwoEndY":I
    .restart local v397    # "engCjzcOverX":I
    .restart local v398    # "engCjzcOverY":I
    :cond_4
    move/16 v399, v1

    move/16 v400, v3

    move/16 v403, v4

    move/16 v405, v5

    move/16 v410, v6

    move/16 v407, v302

    move/16 v406, v303

    move/16 v412, v304

    move/16 v411, v305

    move/from16 v5, v306

    move/from16 v6, v307

    move/16 v409, v396

    move/from16 v14, v397

    move/16 v402, v398

    .end local v1    # "cjzcRecordX":I
    .end local v3    # "cjzcRecordY":I
    .end local v4    # "cjzcRecordEndX":I
    .end local v302    # "engCjzcOverTwoX":I
    .end local v303    # "engCjzcOverTwoEndX":I
    .end local v304    # "engCjzcOverThreeX":I
    .end local v305    # "engCjzcOverThreeY":I
    .end local v306    # "engCjzcOverThreeEndX":I
    .end local v307    # "engCjzcOverThreeEndY":I
    .end local v396    # "engCjzcOverTwoEndY":I
    .end local v397    # "engCjzcOverX":I
    .end local v398    # "engCjzcOverY":I
    .local v5, "engCjzcOverThreeEndX":I
    .local v6, "engCjzcOverThreeEndY":I
    .restart local v14    # "engCjzcOverX":I
    .restart local v399    # "cjzcRecordX":I
    .restart local v400    # "cjzcRecordY":I
    .restart local v402    # "engCjzcOverY":I
    .restart local v403    # "cjzcRecordEndX":I
    .restart local v405    # "cjzcRecordEndY":I
    .restart local v406    # "engCjzcOverTwoEndX":I
    .restart local v407    # "engCjzcOverTwoX":I
    .restart local v409    # "engCjzcOverTwoEndY":I
    .restart local v410    # "engCjzcErrorX":I
    .restart local v411    # "engCjzcOverThreeY":I
    .restart local v412    # "engCjzcOverThreeX":I
    new-instance v1, Landroid/graphics/Rect;

    move/16 v413, v5

    move/16 v414, v6

    move/from16 v3, v308

    move/from16 v4, v309

    move/from16 v5, v310

    move/from16 v6, v311

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v308    # "cjzcErrorX":I
    .end local v309    # "cjzcErrorY":I
    .end local v310    # "cjzcErrorEndX":I
    .end local v311    # "cjzcErrorEndY":I
    .local v3, "cjzcErrorX":I
    .local v4, "cjzcErrorY":I
    .local v5, "cjzcErrorEndX":I
    .local v6, "cjzcErrorEndY":I
    .local v413, "engCjzcOverThreeEndX":I
    .local v414, "engCjzcOverThreeEndY":I
    move/16 v415, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorWidth:I

    .line 1098
    .end local v3    # "cjzcErrorX":I
    .local v415, "cjzcErrorX":I
    move/16 v416, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcErrorHeight:I

    .line 1098
    .end local v4    # "cjzcErrorY":I
    .local v416, "cjzcErrorY":I
    invoke-static {v1, v3, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1100
    .local v1, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v417, v1

    move/16 v418, v5

    move/16 v419, v6

    move/from16 v4, v312

    move/from16 v1, v313

    move/from16 v5, v314

    move/from16 v6, v315

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v312    # "cjzcOverX":I
    .end local v313    # "cjzcOverY":I
    .end local v314    # "cjzcOverEndX":I
    .end local v315    # "cjzcOverEndY":I
    .local v1, "cjzcOverY":I
    .local v4, "cjzcOverX":I
    .local v5, "cjzcOverEndX":I
    .local v6, "cjzcOverEndY":I
    .local v417, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    .local v418, "cjzcErrorEndX":I
    .local v419, "cjzcErrorEndY":I
    move/16 v420, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverWidth:I

    .line 1100
    .end local v1    # "cjzcOverY":I
    .local v420, "cjzcOverY":I
    move/16 v421, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverHeight:I

    .line 1100
    .end local v4    # "cjzcOverX":I
    .local v421, "cjzcOverX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1102
    .local v1, "cjzcOverBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v422, v1

    move/16 v423, v5

    move/16 v424, v6

    move/from16 v4, v316

    move/from16 v1, v317

    move/from16 v5, v318

    move/from16 v6, v319

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v316    # "cjzcOverTwoX":I
    .end local v317    # "cjzcOverTwoY":I
    .end local v318    # "cjzcOverTwoEndX":I
    .end local v319    # "cjzcOverTwoEndY":I
    .local v1, "cjzcOverTwoY":I
    .local v4, "cjzcOverTwoX":I
    .local v5, "cjzcOverTwoEndX":I
    .local v6, "cjzcOverTwoEndY":I
    .local v422, "cjzcOverBitmap":Landroid/graphics/Bitmap;
    .local v423, "cjzcOverEndX":I
    .local v424, "cjzcOverEndY":I
    move/16 v425, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoWidth:I

    .line 1102
    .end local v1    # "cjzcOverTwoY":I
    .local v425, "cjzcOverTwoY":I
    move/16 v426, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverTwoHeight:I

    .line 1102
    .end local v4    # "cjzcOverTwoX":I
    .local v426, "cjzcOverTwoX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1104
    .local v1, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move-object/16 v427, v1

    move/16 v428, v5

    move/16 v429, v6

    move/from16 v4, v320

    move/from16 v1, v321

    move/from16 v5, v322

    move/from16 v6, v323

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v320    # "cjzcOverThreeX":I
    .end local v321    # "cjzcOverThreeY":I
    .end local v322    # "cjzcOverThreeEndX":I
    .end local v323    # "cjzcOverThreeEndY":I
    .local v1, "cjzcOverThreeY":I
    .local v4, "cjzcOverThreeX":I
    .local v5, "cjzcOverThreeEndX":I
    .local v6, "cjzcOverThreeEndY":I
    .local v427, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .local v428, "cjzcOverTwoEndX":I
    .local v429, "cjzcOverTwoEndY":I
    move/16 v430, v1

    iget v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeWidth:I

    .line 1104
    .end local v1    # "cjzcOverThreeY":I
    .local v430, "cjzcOverThreeY":I
    move/16 v431, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcOverThreeHeight:I

    .line 1104
    .end local v4    # "cjzcOverThreeX":I
    .local v431, "cjzcOverThreeX":I
    invoke-static {v3, v1, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1107
    .end local v11    # "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .local v1, "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    move-object v4, v1

    move-object/from16 v1, v417

    move-object/from16 v11, v422

    move-object/from16 v3, v427

    .line 1107
    .end local v417    # "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    .end local v422    # "cjzcOverBitmap":Landroid/graphics/Bitmap;
    .end local v427    # "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .local v1, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    .local v3, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .local v4, "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .local v11, "cjzcOverBitmap":Landroid/graphics/Bitmap;
    :goto_2
    move/16 v432, v5

    new-instance v5, Landroid/graphics/Rect;

    .line 1107
    .end local v5    # "cjzcOverThreeEndX":I
    .local v432, "cjzcOverThreeEndX":I
    move/16 v433, v6

    move/16 v434, v7

    move/16 v435, v8

    move/16 v436, v9

    move/from16 v6, v324

    move/from16 v7, v325

    move/from16 v8, v326

    move/from16 v9, v327

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v324    # "cjzcKillX":I
    .end local v325    # "cjzcKillY":I
    .end local v326    # "cjzcKillEndX":I
    .end local v327    # "cjzcKillEndY":I
    .local v6, "cjzcKillX":I
    .local v7, "cjzcKillY":I
    .local v8, "cjzcKillEndX":I
    .local v9, "cjzcKillEndY":I
    .local v433, "cjzcOverThreeEndY":I
    .local v434, "engCjzcErrorY":I
    .local v435, "engCjzcErrorEndX":I
    .local v436, "engCjzcErrorEndY":I
    move/16 v437, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillWidth:I

    .line 1107
    .end local v6    # "cjzcKillX":I
    .local v437, "cjzcKillX":I
    move/16 v438, v7

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillHeight:I

    .line 1107
    .end local v7    # "cjzcKillY":I
    .local v438, "cjzcKillY":I
    invoke-static {v5, v6, v7, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1109
    .local v5, "cjzcKillBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Rect;

    move/16 v439, v8

    move/16 v440, v9

    move/16 v441, v12

    move/from16 v7, v328

    move/from16 v8, v329

    move/from16 v9, v330

    move/from16 v12, v331

    invoke-direct {v6, v7, v8, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v328    # "cjzcKillTwoX":I
    .end local v329    # "cjzcKillTwoY":I
    .end local v330    # "cjzcKillTwoEndX":I
    .end local v331    # "cjzcKillTwoEndY":I
    .local v7, "cjzcKillTwoX":I
    .local v8, "cjzcKillTwoY":I
    .local v9, "cjzcKillTwoEndX":I
    .local v12, "cjzcKillTwoEndY":I
    .local v439, "cjzcKillEndX":I
    .local v440, "cjzcKillEndY":I
    .local v441, "engCjzcOverEndX":I
    move/16 v442, v7

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoWidth:I

    .line 1109
    .end local v7    # "cjzcKillTwoX":I
    .local v442, "cjzcKillTwoX":I
    move/16 v443, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCjzcKillTwoHeight:I

    .line 1109
    .end local v8    # "cjzcKillTwoY":I
    .local v443, "cjzcKillTwoY":I
    invoke-static {v6, v7, v8, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1111
    .local v6, "cjzcKillTwoBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    if-eqz v1, :cond_5

    .line 1112
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1113
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1114
    const/high16 v8, 0x40000

    new-array v7, v8, [B

    .line 1115
    .local v7, "recordBuf":[B
    invoke-direct {v0, v10}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    .line 1117
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1119
    move/16 v444, v9

    const/high16 v8, 0x40000

    new-array v9, v8, [B

    .line 1120
    .local v9, "errorBuf":[B
    .local v444, "cjzcKillTwoEndX":I
    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v9

    .line 1122
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1123
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1124
    move-object/16 v445, v1

    const/high16 v8, 0x40000

    new-array v1, v8, [B

    .line 1125
    .local v1, "killBuf":[B
    .local v445, "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v5}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 1127
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1128
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1129
    move-object/16 v446, v5

    const/high16 v8, 0x40000

    new-array v5, v8, [B

    .line 1130
    .local v5, "overBuf":[B
    .local v446, "cjzcKillBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v11}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 1132
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1133
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1134
    move-object/16 v447, v10

    const/high16 v8, 0x40000

    new-array v10, v8, [B

    .line 1135
    .local v10, "overTwoBuf":[B
    .local v447, "cjzcRecordBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    .line 1137
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1138
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1139
    move-object/16 v448, v3

    const/high16 v8, 0x40000

    new-array v3, v8, [B

    .line 1140
    .local v3, "killTwoBuf":[B
    .local v448, "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v6}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 1142
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1144
    move-object/16 v449, v6

    const/high16 v8, 0x40000

    new-array v6, v8, [B

    .line 1145
    .local v6, "overThreeBuf":[B
    .local v449, "cjzcKillTwoBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1147
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1148
    .local v8, "bundle":Landroid/os/Bundle;
    move-object/16 v450, v4

    const-string/jumbo v4, "recordBitmap"

    .line 1148
    .end local v4    # "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .local v450, "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v4, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1149
    const-string v4, "errorEndBitmap"

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1150
    const-string/jumbo v4, "killBitmap"

    invoke-virtual {v8, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1151
    const-string/jumbo v4, "overBitmap"

    invoke-virtual {v8, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1152
    const-string/jumbo v4, "overTwoBitmap"

    invoke-virtual {v8, v4, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1153
    const-string/jumbo v4, "killTwoBitmap"

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1154
    const-string/jumbo v4, "overThreeBitmap"

    invoke-virtual {v8, v4, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1155
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1156
    .local v4, "msg":Landroid/os/Message;
    move-object/16 v451, v1

    const/16 v1, 0x3e8

    iput v1, v4, Landroid/os/Message;->what:I

    .line 1157
    .end local v1    # "killBuf":[B
    .local v451, "killBuf":[B
    invoke-virtual {v4, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1158
    move-object/16 v452, v5

    move-object/16 v453, v6

    const-wide/16 v5, 0x1

    invoke-direct {v0, v4, v5, v6}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->callback(Landroid/os/Message;J)V

    .line 1158
    .end local v3    # "killTwoBuf":[B
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "overBuf":[B
    .end local v6    # "overThreeBuf":[B
    .end local v7    # "recordBuf":[B
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "errorBuf":[B
    .end local v10    # "overTwoBuf":[B
    .end local v11    # "cjzcOverBitmap":Landroid/graphics/Bitmap;
    .end local v445    # "cjzcErrorBitmap":Landroid/graphics/Bitmap;
    .end local v446    # "cjzcKillBitmap":Landroid/graphics/Bitmap;
    .end local v447    # "cjzcRecordBitmap":Landroid/graphics/Bitmap;
    .end local v448    # "cjzcOverTwoBitmap":Landroid/graphics/Bitmap;
    .end local v449    # "cjzcKillTwoBitmap":Landroid/graphics/Bitmap;
    .end local v450    # "cjzcOverThreeBitmap":Landroid/graphics/Bitmap;
    .end local v451    # "killBuf":[B
    goto :goto_3

    .line 1161
    .end local v444    # "cjzcKillTwoEndX":I
    .local v9, "cjzcKillTwoEndX":I
    :cond_5
    move/16 v444, v9

    .line 1161
    .end local v9    # "cjzcKillTwoEndX":I
    .restart local v444    # "cjzcKillTwoEndX":I
    :goto_3
    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartBLZY:Z

    if-eqz v1, :cond_6

    .line 1162
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v5, v336

    move/from16 v6, v337

    move/from16 v7, v338

    move/from16 v8, v339

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1162
    .end local v336    # "blzyKillX":I
    .end local v337    # "blzyKillY":I
    .end local v338    # "blzyKillEndX":I
    .end local v339    # "blzyKillEndY":I
    .local v5, "blzyKillX":I
    .local v6, "blzyKillY":I
    .local v7, "blzyKillEndX":I
    .local v8, "blzyKillEndY":I
    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillWidth:I

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyKillHeight:I

    invoke-static {v1, v3, v4, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1164
    .local v1, "blzyKillBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move/from16 v9, v340

    move/from16 v10, v341

    move/from16 v11, v342

    move/from16 v4, v343

    invoke-direct {v3, v9, v10, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1164
    .end local v340    # "blzyOverX":I
    .end local v341    # "blzyOverY":I
    .end local v342    # "blzyOverEndX":I
    .end local v343    # "blzyOverEndY":I
    .local v4, "blzyOverEndY":I
    .local v9, "blzyOverX":I
    .local v10, "blzyOverY":I
    .local v11, "blzyOverEndX":I
    move/16 v454, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverWidth:I

    .line 1164
    .end local v4    # "blzyOverEndY":I
    .local v454, "blzyOverEndY":I
    move/16 v455, v5

    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyOverHeight:I

    .line 1164
    .end local v5    # "blzyKillX":I
    .local v455, "blzyKillX":I
    invoke-static {v3, v4, v5, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1166
    .local v3, "blzyOverBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    move/16 v456, v6

    move/16 v457, v7

    move/16 v458, v8

    move/from16 v5, v332

    move/from16 v6, v333

    move/from16 v7, v334

    move/from16 v8, v335

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v332    # "blzyRecordX":I
    .end local v333    # "blzyRecordY":I
    .end local v334    # "blzyRecordEndX":I
    .end local v335    # "blzyRecordEndY":I
    .local v5, "blzyRecordX":I
    .local v6, "blzyRecordY":I
    .local v7, "blzyRecordEndX":I
    .local v8, "blzyRecordEndY":I
    .local v456, "blzyKillY":I
    .local v457, "blzyKillEndX":I
    .local v458, "blzyKillEndY":I
    move/16 v459, v5

    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordWidth:I

    .line 1166
    .end local v5    # "blzyRecordX":I
    .local v459, "blzyRecordX":I
    move/16 v460, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyRecordHeight:I

    .line 1166
    .end local v6    # "blzyRecordY":I
    .local v460, "blzyRecordY":I
    invoke-static {v4, v5, v6, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1168
    .local v4, "blzyRecordBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    move/16 v461, v7

    move/16 v462, v8

    move/16 v463, v9

    move/from16 v6, v344

    move/from16 v7, v345

    move/from16 v8, v346

    move/from16 v9, v347

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v344    # "blzyVictoryX":I
    .end local v345    # "blzyVictoryY":I
    .end local v346    # "blzyVictoryEndX":I
    .end local v347    # "blzyVictoryEndY":I
    .local v6, "blzyVictoryX":I
    .local v7, "blzyVictoryY":I
    .local v8, "blzyVictoryEndX":I
    .local v9, "blzyVictoryEndY":I
    .local v461, "blzyRecordEndX":I
    .local v462, "blzyRecordEndY":I
    .local v463, "blzyOverX":I
    move/16 v464, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryWidth:I

    .line 1168
    .end local v6    # "blzyVictoryX":I
    .local v464, "blzyVictoryX":I
    move/16 v465, v7

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mBlzyVictoryHeight:I

    .line 1168
    .end local v7    # "blzyVictoryY":I
    .local v465, "blzyVictoryY":I
    invoke-static {v5, v6, v7, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1170
    .local v5, "blzyVictoryBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 1171
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1172
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1173
    const/high16 v7, 0x40000

    new-array v6, v7, [B

    .line 1174
    .local v6, "blzyKillBitmapBuf":[B
    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1176
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1177
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1178
    move-object/16 v466, v1

    const/high16 v7, 0x40000

    new-array v1, v7, [B

    .line 1179
    .local v1, "blzyOverBitmapBuf":[B
    .local v466, "blzyKillBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 1181
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1182
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1183
    move-object/16 v467, v3

    const/high16 v7, 0x40000

    new-array v3, v7, [B

    .line 1184
    .local v3, "blzyRecordBitmapBuf":[B
    .local v467, "blzyOverBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 1186
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1187
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1188
    move-object/16 v468, v4

    const/high16 v7, 0x40000

    new-array v4, v7, [B

    .line 1189
    .local v4, "blzyVictoryBitmapBuf":[B
    .local v468, "blzyRecordBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v5}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 1191
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1192
    .local v7, "bundle":Landroid/os/Bundle;
    move-object/16 v469, v5

    const-string/jumbo v5, "killBitmap"

    .line 1192
    .end local v5    # "blzyVictoryBitmap":Landroid/graphics/Bitmap;
    .local v469, "blzyVictoryBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1193
    const-string/jumbo v5, "overBitmap"

    invoke-virtual {v7, v5, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1194
    const-string/jumbo v5, "recordBitmap"

    invoke-virtual {v7, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1195
    const-string/jumbo v5, "victoryBitmap"

    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 1197
    .local v5, "msg":Landroid/os/Message;
    move-object/16 v470, v1

    const/16 v1, 0x3e8

    iput v1, v5, Landroid/os/Message;->what:I

    .line 1198
    .end local v1    # "blzyOverBitmapBuf":[B
    .local v470, "blzyOverBitmapBuf":[B
    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1199
    move-object/16 v471, v3

    move-object/16 v472, v4

    const-wide/16 v3, 0x1

    invoke-direct {v0, v5, v3, v4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->callback(Landroid/os/Message;J)V

    .line 1199
    .end local v3    # "blzyRecordBitmapBuf":[B
    .end local v4    # "blzyVictoryBitmapBuf":[B
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "blzyKillBitmapBuf":[B
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v466    # "blzyKillBitmap":Landroid/graphics/Bitmap;
    .end local v467    # "blzyOverBitmap":Landroid/graphics/Bitmap;
    .end local v468    # "blzyRecordBitmap":Landroid/graphics/Bitmap;
    .end local v469    # "blzyVictoryBitmap":Landroid/graphics/Bitmap;
    .end local v470    # "blzyOverBitmapBuf":[B
    goto :goto_4

    .line 1202
    .end local v8    # "blzyVictoryEndX":I
    .end local v9    # "blzyVictoryEndY":I
    .end local v10    # "blzyOverY":I
    .end local v11    # "blzyOverEndX":I
    .end local v454    # "blzyOverEndY":I
    .end local v455    # "blzyKillX":I
    .end local v456    # "blzyKillY":I
    .end local v457    # "blzyKillEndX":I
    .end local v458    # "blzyKillEndY":I
    .end local v459    # "blzyRecordX":I
    .end local v460    # "blzyRecordY":I
    .end local v461    # "blzyRecordEndX":I
    .end local v462    # "blzyRecordEndY":I
    .end local v463    # "blzyOverX":I
    .end local v464    # "blzyVictoryX":I
    .end local v465    # "blzyVictoryY":I
    .restart local v332    # "blzyRecordX":I
    .restart local v333    # "blzyRecordY":I
    .restart local v334    # "blzyRecordEndX":I
    .restart local v335    # "blzyRecordEndY":I
    .restart local v336    # "blzyKillX":I
    .restart local v337    # "blzyKillY":I
    .restart local v338    # "blzyKillEndX":I
    .restart local v339    # "blzyKillEndY":I
    .restart local v340    # "blzyOverX":I
    .restart local v341    # "blzyOverY":I
    .restart local v342    # "blzyOverEndX":I
    .restart local v343    # "blzyOverEndY":I
    .restart local v344    # "blzyVictoryX":I
    .restart local v345    # "blzyVictoryY":I
    .restart local v346    # "blzyVictoryEndX":I
    .restart local v347    # "blzyVictoryEndY":I
    :cond_6
    move/16 v459, v332

    move/16 v460, v333

    move/16 v461, v334

    move/16 v462, v335

    move/16 v455, v336

    move/16 v456, v337

    move/16 v457, v338

    move/16 v458, v339

    move/16 v463, v340

    move/from16 v10, v341

    move/from16 v11, v342

    move/16 v454, v343

    move/16 v464, v344

    move/16 v465, v345

    move/from16 v8, v346

    move/from16 v9, v347

    .end local v332    # "blzyRecordX":I
    .end local v333    # "blzyRecordY":I
    .end local v334    # "blzyRecordEndX":I
    .end local v335    # "blzyRecordEndY":I
    .end local v336    # "blzyKillX":I
    .end local v337    # "blzyKillY":I
    .end local v338    # "blzyKillEndX":I
    .end local v339    # "blzyKillEndY":I
    .end local v340    # "blzyOverX":I
    .end local v341    # "blzyOverY":I
    .end local v342    # "blzyOverEndX":I
    .end local v343    # "blzyOverEndY":I
    .end local v344    # "blzyVictoryX":I
    .end local v345    # "blzyVictoryY":I
    .end local v346    # "blzyVictoryEndX":I
    .end local v347    # "blzyVictoryEndY":I
    .restart local v8    # "blzyVictoryEndX":I
    .restart local v9    # "blzyVictoryEndY":I
    .restart local v10    # "blzyOverY":I
    .restart local v11    # "blzyOverEndX":I
    .restart local v454    # "blzyOverEndY":I
    .restart local v455    # "blzyKillX":I
    .restart local v456    # "blzyKillY":I
    .restart local v457    # "blzyKillEndX":I
    .restart local v458    # "blzyKillEndY":I
    .restart local v459    # "blzyRecordX":I
    .restart local v460    # "blzyRecordY":I
    .restart local v461    # "blzyRecordEndX":I
    .restart local v462    # "blzyRecordEndY":I
    .restart local v463    # "blzyOverX":I
    .restart local v464    # "blzyVictoryX":I
    .restart local v465    # "blzyVictoryY":I
    :cond_7
    :goto_4
    iget-boolean v1, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartWZRY:Z

    if-eqz v1, :cond_a

    .line 1203
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v3, v348

    move/from16 v4, v349

    move/from16 v5, v350

    move/from16 v6, v351

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1203
    .end local v348    # "wzryOverX":I
    .end local v349    # "wzryOverY":I
    .end local v350    # "wzryOverEndX":I
    .end local v351    # "wzryOverEndY":I
    .local v3, "wzryOverX":I
    .local v4, "wzryOverY":I
    .local v5, "wzryOverEndX":I
    .local v6, "wzryOverEndY":I
    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverWidth:I

    move/16 v473, v3

    iget v3, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryOverHeight:I

    .line 1203
    .end local v3    # "wzryOverX":I
    .local v473, "wzryOverX":I
    invoke-static {v1, v7, v3, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1205
    .local v1, "wzryOverBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    move/16 v474, v4

    move/16 v475, v5

    move/16 v476, v6

    move/from16 v7, v352

    move/from16 v4, v353

    move/from16 v5, v354

    move/from16 v6, v355

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v352    # "wzryErrorX":I
    .end local v353    # "wzryErrorY":I
    .end local v354    # "wzryErrorEndX":I
    .end local v355    # "wzryErrorEndY":I
    .local v4, "wzryErrorY":I
    .local v5, "wzryErrorEndX":I
    .local v6, "wzryErrorEndY":I
    .local v7, "wzryErrorX":I
    .local v474, "wzryOverY":I
    .local v475, "wzryOverEndX":I
    .local v476, "wzryOverEndY":I
    move/16 v477, v4

    iget v4, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorWidth:I

    .line 1205
    .end local v4    # "wzryErrorY":I
    .local v477, "wzryErrorY":I
    move/16 v478, v5

    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryErrorHeight:I

    .line 1205
    .end local v5    # "wzryErrorEndX":I
    .local v478, "wzryErrorEndX":I
    invoke-static {v3, v4, v5, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1207
    .local v3, "wzryErrorBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    move/16 v479, v6

    move/16 v480, v7

    move/16 v481, v8

    move/from16 v5, v356

    move/from16 v6, v357

    move/from16 v7, v358

    move/from16 v8, v359

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v356    # "wzryRecordX":I
    .end local v357    # "wzryRecordY":I
    .end local v358    # "wzryRecordEndX":I
    .end local v359    # "wzryRecordEndY":I
    .local v5, "wzryRecordX":I
    .local v6, "wzryRecordY":I
    .local v7, "wzryRecordEndX":I
    .local v8, "wzryRecordEndY":I
    .local v479, "wzryErrorEndY":I
    .local v480, "wzryErrorX":I
    .local v481, "blzyVictoryEndX":I
    move/16 v482, v5

    iget v5, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordWidth:I

    .line 1207
    .end local v5    # "wzryRecordX":I
    .local v482, "wzryRecordX":I
    move/16 v483, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordHeight:I

    .line 1207
    .end local v6    # "wzryRecordY":I
    .local v483, "wzryRecordY":I
    invoke-static {v4, v5, v6, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1209
    .local v4, "wzryRecordBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    move/16 v484, v7

    move/16 v485, v8

    move/16 v486, v9

    move/from16 v6, v368

    move/from16 v7, v369

    move/from16 v8, v370

    move/from16 v9, v371

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v368    # "wzryRecordTwoX":I
    .end local v369    # "wzryRecordTwoY":I
    .end local v370    # "wzryRecordTwoEndX":I
    .end local v371    # "wzryRecordTwoEndY":I
    .local v6, "wzryRecordTwoX":I
    .local v7, "wzryRecordTwoY":I
    .local v8, "wzryRecordTwoEndX":I
    .local v9, "wzryRecordTwoEndY":I
    .local v484, "wzryRecordEndX":I
    .local v485, "wzryRecordEndY":I
    .local v486, "blzyVictoryEndY":I
    move/16 v487, v6

    iget v6, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoWidth:I

    .line 1209
    .end local v6    # "wzryRecordTwoX":I
    .local v487, "wzryRecordTwoX":I
    move/16 v488, v7

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryRecordTwoHeight:I

    .line 1209
    .end local v7    # "wzryRecordTwoY":I
    .local v488, "wzryRecordTwoY":I
    invoke-static {v5, v6, v7, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1212
    .local v5, "wzryRecordTwoBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Rect;

    move/16 v489, v8

    move/16 v490, v9

    move/16 v491, v10

    move/from16 v7, v380

    move/from16 v8, v381

    move/from16 v9, v382

    move/from16 v10, v383

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v380    # "wzryVictoryX":I
    .end local v381    # "wzryVictoryY":I
    .end local v382    # "wzryVictoryEndX":I
    .end local v383    # "wzryVictoryEndY":I
    .local v7, "wzryVictoryX":I
    .local v8, "wzryVictoryY":I
    .local v9, "wzryVictoryEndX":I
    .local v10, "wzryVictoryEndY":I
    .local v489, "wzryRecordTwoEndX":I
    .local v490, "wzryRecordTwoEndY":I
    .local v491, "blzyOverY":I
    move/16 v492, v7

    iget v7, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryWidth:I

    .line 1212
    .end local v7    # "wzryVictoryX":I
    .local v492, "wzryVictoryX":I
    move/16 v493, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryVictoryHeight:I

    .line 1212
    .end local v8    # "wzryVictoryY":I
    .local v493, "wzryVictoryY":I
    invoke-static {v6, v7, v8, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1214
    .local v6, "wzryVictoryBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Rect;

    move/16 v494, v9

    move/16 v495, v10

    move/16 v496, v11

    move/from16 v8, v384

    move/from16 v9, v385

    move/from16 v10, v386

    move/from16 v11, v387

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v384    # "wzryToastX":I
    .end local v385    # "wzryToastY":I
    .end local v386    # "wzryToastEndX":I
    .end local v387    # "wzryToastEndY":I
    .local v8, "wzryToastX":I
    .local v9, "wzryToastY":I
    .local v10, "wzryToastEndX":I
    .local v11, "wzryToastEndY":I
    .local v494, "wzryVictoryEndX":I
    .local v495, "wzryVictoryEndY":I
    .local v496, "blzyOverEndX":I
    move/16 v497, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastWidth:I

    .line 1214
    .end local v8    # "wzryToastX":I
    .local v497, "wzryToastX":I
    move/16 v498, v9

    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryToastHeight:I

    .line 1214
    .end local v9    # "wzryToastY":I
    .local v498, "wzryToastY":I
    invoke-static {v7, v8, v9, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1219
    .local v7, "wzryToastBitmap":Landroid/graphics/Bitmap;
    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 1220
    new-instance v8, Landroid/graphics/Rect;

    move/16 v499, v10

    move/16 v500, v11

    move/16 v501, v12

    move/from16 v9, v372

    move/from16 v10, v373

    move/from16 v11, v374

    move/from16 v12, v375

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v372    # "wzryKillTwoX":I
    .end local v373    # "wzryKillTwoY":I
    .end local v374    # "wzryKillTwoEndX":I
    .end local v375    # "wzryKillTwoEndY":I
    .local v9, "wzryKillTwoX":I
    .local v10, "wzryKillTwoY":I
    .local v11, "wzryKillTwoEndX":I
    .local v12, "wzryKillTwoEndY":I
    .local v499, "wzryToastEndX":I
    .local v500, "wzryToastEndY":I
    .local v501, "cjzcKillTwoEndY":I
    move/16 v502, v9

    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoWidth:I

    .line 1220
    .end local v9    # "wzryKillTwoX":I
    .local v502, "wzryKillTwoX":I
    move/16 v503, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillTwoHeight:I

    .line 1220
    .end local v10    # "wzryKillTwoY":I
    .local v503, "wzryKillTwoY":I
    invoke-static {v8, v9, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1222
    .local v8, "wzryKillBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    move-object/16 v504, v8

    move/16 v505, v11

    move/16 v506, v12

    move/from16 v10, v376

    move/from16 v8, v377

    move/from16 v11, v378

    move/from16 v12, v379

    invoke-direct {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v376    # "wzryAssistTwoX":I
    .end local v377    # "wzryAssistTwoY":I
    .end local v378    # "wzryAssistTwoEndX":I
    .end local v379    # "wzryAssistTwoEndY":I
    .local v8, "wzryAssistTwoY":I
    .local v10, "wzryAssistTwoX":I
    .local v11, "wzryAssistTwoEndX":I
    .local v12, "wzryAssistTwoEndY":I
    .local v504, "wzryKillBitmap":Landroid/graphics/Bitmap;
    .local v505, "wzryKillTwoEndX":I
    .local v506, "wzryKillTwoEndY":I
    move/16 v507, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoWidth:I

    .line 1222
    .end local v8    # "wzryAssistTwoY":I
    .local v507, "wzryAssistTwoY":I
    move/16 v508, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistTwoHeight:I

    .line 1222
    .end local v10    # "wzryAssistTwoX":I
    .local v508, "wzryAssistTwoX":I
    invoke-static {v9, v8, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1224
    .local v8, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    move-object/16 v509, v8

    move/16 v510, v11

    move/16 v511, v12

    move/from16 v10, v392

    move/from16 v8, v393

    move/from16 v11, v394

    move/from16 v12, v395

    invoke-direct {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v392    # "wzryDieTwoX":I
    .end local v393    # "wzryDieTwoY":I
    .end local v394    # "wzryDieTwoEndX":I
    .end local v395    # "wzryDieTwoEndY":I
    .local v8, "wzryDieTwoY":I
    .local v10, "wzryDieTwoX":I
    .local v11, "wzryDieTwoEndX":I
    .local v12, "wzryDieTwoEndY":I
    .local v509, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    .local v510, "wzryAssistTwoEndX":I
    .local v511, "wzryAssistTwoEndY":I
    move/16 v512, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoWidth:I

    .line 1224
    .end local v8    # "wzryDieTwoY":I
    .local v512, "wzryDieTwoY":I
    move/16 v513, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieTwoHeight:I

    .line 1224
    .end local v10    # "wzryDieTwoX":I
    .local v513, "wzryDieTwoX":I
    invoke-static {v9, v8, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1231
    .local v8, "wzryDieBitmap":Landroid/graphics/Bitmap;
    move/16 v514, v11

    move/16 v515, v12

    move/16 v516, v360

    move/16 v517, v361

    move/16 v519, v362

    move/16 v520, v363

    move/16 v522, v364

    move/16 v521, v365

    move/16 v524, v366

    move/16 v525, v367

    move/16 v527, v388

    move/16 v526, v389

    move/from16 v11, v390

    move/from16 v12, v391

    move-object/from16 v9, v504

    move-object/from16 v10, v509

    goto/16 :goto_5

    .line 1227
    .end local v8    # "wzryDieBitmap":Landroid/graphics/Bitmap;
    .end local v499    # "wzryToastEndX":I
    .end local v500    # "wzryToastEndY":I
    .end local v501    # "cjzcKillTwoEndY":I
    .end local v502    # "wzryKillTwoX":I
    .end local v503    # "wzryKillTwoY":I
    .end local v504    # "wzryKillBitmap":Landroid/graphics/Bitmap;
    .end local v505    # "wzryKillTwoEndX":I
    .end local v506    # "wzryKillTwoEndY":I
    .end local v507    # "wzryAssistTwoY":I
    .end local v508    # "wzryAssistTwoX":I
    .end local v509    # "wzryAssistBitmap":Landroid/graphics/Bitmap;
    .end local v510    # "wzryAssistTwoEndX":I
    .end local v511    # "wzryAssistTwoEndY":I
    .end local v512    # "wzryDieTwoY":I
    .end local v513    # "wzryDieTwoX":I
    .local v10, "wzryToastEndX":I
    .local v11, "wzryToastEndY":I
    .local v12, "cjzcKillTwoEndY":I
    .restart local v372    # "wzryKillTwoX":I
    .restart local v373    # "wzryKillTwoY":I
    .restart local v374    # "wzryKillTwoEndX":I
    .restart local v375    # "wzryKillTwoEndY":I
    .restart local v376    # "wzryAssistTwoX":I
    .restart local v377    # "wzryAssistTwoY":I
    .restart local v378    # "wzryAssistTwoEndX":I
    .restart local v379    # "wzryAssistTwoEndY":I
    .restart local v392    # "wzryDieTwoX":I
    .restart local v393    # "wzryDieTwoY":I
    .restart local v394    # "wzryDieTwoEndX":I
    .restart local v395    # "wzryDieTwoEndY":I
    :cond_8
    move/16 v499, v10

    move/16 v500, v11

    move/16 v501, v12

    move/16 v502, v372

    move/16 v503, v373

    move/16 v505, v374

    move/16 v506, v375

    move/16 v508, v376

    move/16 v507, v377

    move/16 v510, v378

    move/16 v511, v379

    move/16 v513, v392

    move/16 v512, v393

    move/from16 v11, v394

    move/from16 v12, v395

    .end local v10    # "wzryToastEndX":I
    .end local v372    # "wzryKillTwoX":I
    .end local v373    # "wzryKillTwoY":I
    .end local v374    # "wzryKillTwoEndX":I
    .end local v375    # "wzryKillTwoEndY":I
    .end local v376    # "wzryAssistTwoX":I
    .end local v377    # "wzryAssistTwoY":I
    .end local v378    # "wzryAssistTwoEndX":I
    .end local v379    # "wzryAssistTwoEndY":I
    .end local v392    # "wzryDieTwoX":I
    .end local v393    # "wzryDieTwoY":I
    .end local v394    # "wzryDieTwoEndX":I
    .end local v395    # "wzryDieTwoEndY":I
    .local v11, "wzryDieTwoEndX":I
    .local v12, "wzryDieTwoEndY":I
    .restart local v499    # "wzryToastEndX":I
    .restart local v500    # "wzryToastEndY":I
    .restart local v501    # "cjzcKillTwoEndY":I
    .restart local v502    # "wzryKillTwoX":I
    .restart local v503    # "wzryKillTwoY":I
    .restart local v505    # "wzryKillTwoEndX":I
    .restart local v506    # "wzryKillTwoEndY":I
    .restart local v507    # "wzryAssistTwoY":I
    .restart local v508    # "wzryAssistTwoX":I
    .restart local v510    # "wzryAssistTwoEndX":I
    .restart local v511    # "wzryAssistTwoEndY":I
    .restart local v512    # "wzryDieTwoY":I
    .restart local v513    # "wzryDieTwoX":I
    new-instance v8, Landroid/graphics/Rect;

    move/16 v514, v11

    move/16 v515, v12

    move/from16 v9, v360

    move/from16 v10, v361

    move/from16 v11, v362

    move/from16 v12, v363

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v360    # "wzryKillX":I
    .end local v361    # "wzryKillY":I
    .end local v362    # "wzryKillEndX":I
    .end local v363    # "wzryKillEndY":I
    .local v9, "wzryKillX":I
    .local v10, "wzryKillY":I
    .local v11, "wzryKillEndX":I
    .local v12, "wzryKillEndY":I
    .local v514, "wzryDieTwoEndX":I
    .local v515, "wzryDieTwoEndY":I
    move/16 v516, v9

    iget v9, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillWidth:I

    .line 1227
    .end local v9    # "wzryKillX":I
    .local v516, "wzryKillX":I
    move/16 v517, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryKillHeight:I

    .line 1227
    .end local v10    # "wzryKillY":I
    .local v517, "wzryKillY":I
    invoke-static {v8, v9, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1229
    .local v8, "wzryKillBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    move-object/16 v518, v8

    move/16 v519, v11

    move/16 v520, v12

    move/from16 v10, v364

    move/from16 v8, v365

    move/from16 v11, v366

    move/from16 v12, v367

    invoke-direct {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v364    # "wzryAssistX":I
    .end local v365    # "wzryAssistY":I
    .end local v366    # "wzryAssistEndX":I
    .end local v367    # "wzryAssistEndY":I
    .local v8, "wzryAssistY":I
    .local v10, "wzryAssistX":I
    .local v11, "wzryAssistEndX":I
    .local v12, "wzryAssistEndY":I
    .local v518, "wzryKillBitmap":Landroid/graphics/Bitmap;
    .local v519, "wzryKillEndX":I
    .local v520, "wzryKillEndY":I
    move/16 v521, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistWidth:I

    .line 1229
    .end local v8    # "wzryAssistY":I
    .local v521, "wzryAssistY":I
    move/16 v522, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryAssistHeight:I

    .line 1229
    .end local v10    # "wzryAssistX":I
    .local v522, "wzryAssistX":I
    invoke-static {v9, v8, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1231
    .local v8, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    move-object/16 v523, v8

    move/16 v524, v11

    move/16 v525, v12

    move/from16 v10, v388

    move/from16 v8, v389

    move/from16 v11, v390

    move/from16 v12, v391

    invoke-direct {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v388    # "wzryDieX":I
    .end local v389    # "wzryDieY":I
    .end local v390    # "wzryDieEndX":I
    .end local v391    # "wzryDieEndY":I
    .local v8, "wzryDieY":I
    .local v10, "wzryDieX":I
    .local v11, "wzryDieEndX":I
    .local v12, "wzryDieEndY":I
    .local v523, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    .local v524, "wzryAssistEndX":I
    .local v525, "wzryAssistEndY":I
    move/16 v526, v8

    iget v8, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieWidth:I

    .line 1231
    .end local v8    # "wzryDieY":I
    .local v526, "wzryDieY":I
    move/16 v527, v10

    iget v10, v0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mWzryDieHeight:I

    .line 1231
    .end local v10    # "wzryDieX":I
    .local v527, "wzryDieX":I
    invoke-static {v9, v8, v10, v2}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v9, v518

    move-object/from16 v10, v523

    .line 1234
    .end local v518    # "wzryKillBitmap":Landroid/graphics/Bitmap;
    .end local v523    # "wzryAssistBitmap":Landroid/graphics/Bitmap;
    .local v8, "wzryDieBitmap":Landroid/graphics/Bitmap;
    .local v9, "wzryKillBitmap":Landroid/graphics/Bitmap;
    .local v10, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v9, :cond_9

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    if-eqz v10, :cond_9

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 1235
    move/16 v528, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1236
    .end local v2    # "rotation":I
    .local v528, "rotation":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1237
    move/16 v529, v11

    const/high16 v2, 0x40000

    new-array v11, v2, [B

    .line 1238
    .local v11, "wzOverBuf":[B
    .local v529, "wzryDieEndX":I
    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    .line 1240
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1241
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1242
    move-object/16 v530, v1

    const/high16 v2, 0x40000

    new-array v1, v2, [B

    .line 1243
    .local v1, "wzErrorBuf":[B
    .local v530, "wzryOverBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 1245
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1246
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1247
    move-object/16 v531, v3

    const/high16 v2, 0x40000

    new-array v3, v2, [B

    .line 1248
    .local v3, "wzRecordBuf":[B
    .local v531, "wzryErrorBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 1250
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1251
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1252
    move-object/16 v532, v4

    const/high16 v2, 0x40000

    new-array v4, v2, [B

    .line 1253
    .local v4, "wzRecordTwoBuf":[B
    .local v532, "wzryRecordBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v5}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 1255
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1256
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1257
    move-object/16 v533, v5

    const/high16 v2, 0x40000

    new-array v5, v2, [B

    .line 1258
    .local v5, "wzKillBuf":[B
    .local v533, "wzryRecordTwoBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v9}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 1260
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1261
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1262
    move-object/16 v534, v9

    const/high16 v2, 0x40000

    new-array v9, v2, [B

    .line 1263
    .local v9, "wzAssistBuf":[B
    .local v534, "wzryKillBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v10}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v9

    .line 1265
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1266
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1267
    move-object/16 v535, v10

    const/high16 v2, 0x40000

    new-array v10, v2, [B

    .line 1268
    .local v10, "wzVictoryBuf":[B
    .local v535, "wzryAssistBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v6}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    .line 1270
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1271
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1272
    move-object/16 v536, v6

    const/high16 v2, 0x40000

    new-array v6, v2, [B

    .line 1273
    .local v6, "wzToastBuf":[B
    .local v536, "wzryVictoryBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v0, v7}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1275
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1276
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1277
    const/high16 v2, 0x40000

    new-array v2, v2, [B

    .line 1278
    .local v2, "wzDieBuf":[B
    invoke-direct {v0, v8}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 1280
    move-object/16 v537, v7

    new-instance v7, Landroid/os/Bundle;

    .line 1280
    .end local v7    # "wzryToastBitmap":Landroid/graphics/Bitmap;
    .local v537, "wzryToastBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v7, "bundle":Landroid/os/Bundle;
    move-object/16 v538, v8

    const-string/jumbo v8, "killBitmap"

    .line 1281
    .end local v8    # "wzryDieBitmap":Landroid/graphics/Bitmap;
    .local v538, "wzryDieBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1282
    const-string/jumbo v8, "overBitmap"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1283
    const-string v8, "errorEndBitmap"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1284
    const-string/jumbo v8, "recordBitmap"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1285
    const-string/jumbo v8, "recordTwoBitmap"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1286
    const-string/jumbo v8, "wzAssistBitmap"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1287
    const-string/jumbo v8, "wzVictoryBitmap"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1288
    const-string/jumbo v8, "wzToastBitmap"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1289
    const-string/jumbo v8, "wzDieBitmap"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 1291
    .local v8, "msg":Landroid/os/Message;
    move-object/16 v539, v1

    const/16 v1, 0x3e8

    iput v1, v8, Landroid/os/Message;->what:I

    .line 1292
    .end local v1    # "wzErrorBuf":[B
    .local v539, "wzErrorBuf":[B
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1293
    move-object/16 v540, v2

    const-wide/16 v1, 0x1

    invoke-direct {v0, v8, v1, v2}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->callback(Landroid/os/Message;J)V

    .line 1293
    .end local v2    # "wzDieBuf":[B
    .end local v3    # "wzRecordBuf":[B
    .end local v4    # "wzRecordTwoBuf":[B
    .end local v5    # "wzKillBuf":[B
    .end local v6    # "wzToastBuf":[B
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "wzAssistBuf":[B
    .end local v10    # "wzVictoryBuf":[B
    .end local v11    # "wzOverBuf":[B
    .end local v530    # "wzryOverBitmap":Landroid/graphics/Bitmap;
    .end local v531    # "wzryErrorBitmap":Landroid/graphics/Bitmap;
    .end local v532    # "wzryRecordBitmap":Landroid/graphics/Bitmap;
    .end local v533    # "wzryRecordTwoBitmap":Landroid/graphics/Bitmap;
    .end local v534    # "wzryKillBitmap":Landroid/graphics/Bitmap;
    .end local v535    # "wzryAssistBitmap":Landroid/graphics/Bitmap;
    .end local v536    # "wzryVictoryBitmap":Landroid/graphics/Bitmap;
    .end local v537    # "wzryToastBitmap":Landroid/graphics/Bitmap;
    .end local v538    # "wzryDieBitmap":Landroid/graphics/Bitmap;
    .end local v539    # "wzErrorBuf":[B
    goto/16 :goto_6

    .line 1296
    .end local v528    # "rotation":I
    .end local v529    # "wzryDieEndX":I
    .local v2, "rotation":I
    .local v11, "wzryDieEndX":I
    :cond_9
    move/16 v528, v2

    move/16 v529, v11

    .line 1296
    .end local v2    # "rotation":I
    .end local v11    # "wzryDieEndX":I
    .restart local v528    # "rotation":I
    .restart local v529    # "wzryDieEndX":I
    goto/16 :goto_6

    .line 1296
    .end local v473    # "wzryOverX":I
    .end local v474    # "wzryOverY":I
    .end local v475    # "wzryOverEndX":I
    .end local v476    # "wzryOverEndY":I
    .end local v477    # "wzryErrorY":I
    .end local v478    # "wzryErrorEndX":I
    .end local v479    # "wzryErrorEndY":I
    .end local v480    # "wzryErrorX":I
    .end local v481    # "blzyVictoryEndX":I
    .end local v482    # "wzryRecordX":I
    .end local v483    # "wzryRecordY":I
    .end local v484    # "wzryRecordEndX":I
    .end local v485    # "wzryRecordEndY":I
    .end local v486    # "blzyVictoryEndY":I
    .end local v487    # "wzryRecordTwoX":I
    .end local v488    # "wzryRecordTwoY":I
    .end local v489    # "wzryRecordTwoEndX":I
    .end local v490    # "wzryRecordTwoEndY":I
    .end local v491    # "blzyOverY":I
    .end local v492    # "wzryVictoryX":I
    .end local v493    # "wzryVictoryY":I
    .end local v494    # "wzryVictoryEndX":I
    .end local v495    # "wzryVictoryEndY":I
    .end local v496    # "blzyOverEndX":I
    .end local v497    # "wzryToastX":I
    .end local v498    # "wzryToastY":I
    .end local v499    # "wzryToastEndX":I
    .end local v500    # "wzryToastEndY":I
    .end local v501    # "cjzcKillTwoEndY":I
    .end local v502    # "wzryKillTwoX":I
    .end local v503    # "wzryKillTwoY":I
    .end local v505    # "wzryKillTwoEndX":I
    .end local v506    # "wzryKillTwoEndY":I
    .end local v507    # "wzryAssistTwoY":I
    .end local v508    # "wzryAssistTwoX":I
    .end local v510    # "wzryAssistTwoEndX":I
    .end local v511    # "wzryAssistTwoEndY":I
    .end local v512    # "wzryDieTwoY":I
    .end local v513    # "wzryDieTwoX":I
    .end local v514    # "wzryDieTwoEndX":I
    .end local v515    # "wzryDieTwoEndY":I
    .end local v516    # "wzryKillX":I
    .end local v517    # "wzryKillY":I
    .end local v519    # "wzryKillEndX":I
    .end local v520    # "wzryKillEndY":I
    .end local v521    # "wzryAssistY":I
    .end local v522    # "wzryAssistX":I
    .end local v524    # "wzryAssistEndX":I
    .end local v525    # "wzryAssistEndY":I
    .end local v526    # "wzryDieY":I
    .end local v527    # "wzryDieX":I
    .end local v528    # "rotation":I
    .end local v529    # "wzryDieEndX":I
    .restart local v2    # "rotation":I
    .local v8, "blzyVictoryEndX":I
    .local v9, "blzyVictoryEndY":I
    .local v10, "blzyOverY":I
    .local v11, "blzyOverEndX":I
    .local v12, "cjzcKillTwoEndY":I
    .restart local v348    # "wzryOverX":I
    .restart local v349    # "wzryOverY":I
    .restart local v350    # "wzryOverEndX":I
    .restart local v351    # "wzryOverEndY":I
    .restart local v352    # "wzryErrorX":I
    .restart local v353    # "wzryErrorY":I
    .restart local v354    # "wzryErrorEndX":I
    .restart local v355    # "wzryErrorEndY":I
    .restart local v356    # "wzryRecordX":I
    .restart local v357    # "wzryRecordY":I
    .restart local v358    # "wzryRecordEndX":I
    .restart local v359    # "wzryRecordEndY":I
    .restart local v360    # "wzryKillX":I
    .restart local v361    # "wzryKillY":I
    .restart local v362    # "wzryKillEndX":I
    .restart local v363    # "wzryKillEndY":I
    .restart local v364    # "wzryAssistX":I
    .restart local v365    # "wzryAssistY":I
    .restart local v366    # "wzryAssistEndX":I
    .restart local v367    # "wzryAssistEndY":I
    .restart local v368    # "wzryRecordTwoX":I
    .restart local v369    # "wzryRecordTwoY":I
    .restart local v370    # "wzryRecordTwoEndX":I
    .restart local v371    # "wzryRecordTwoEndY":I
    .restart local v372    # "wzryKillTwoX":I
    .restart local v373    # "wzryKillTwoY":I
    .restart local v374    # "wzryKillTwoEndX":I
    .restart local v375    # "wzryKillTwoEndY":I
    .restart local v376    # "wzryAssistTwoX":I
    .restart local v377    # "wzryAssistTwoY":I
    .restart local v378    # "wzryAssistTwoEndX":I
    .restart local v379    # "wzryAssistTwoEndY":I
    .restart local v380    # "wzryVictoryX":I
    .restart local v381    # "wzryVictoryY":I
    .restart local v382    # "wzryVictoryEndX":I
    .restart local v383    # "wzryVictoryEndY":I
    .restart local v384    # "wzryToastX":I
    .restart local v385    # "wzryToastY":I
    .restart local v386    # "wzryToastEndX":I
    .restart local v387    # "wzryToastEndY":I
    .restart local v388    # "wzryDieX":I
    .restart local v389    # "wzryDieY":I
    .restart local v390    # "wzryDieEndX":I
    .restart local v391    # "wzryDieEndY":I
    .restart local v392    # "wzryDieTwoX":I
    .restart local v393    # "wzryDieTwoY":I
    .restart local v394    # "wzryDieTwoEndX":I
    .restart local v395    # "wzryDieTwoEndY":I
    :cond_a
    move/16 v528, v2

    move/16 v481, v8

    move/16 v486, v9

    move/16 v491, v10

    move/16 v496, v11

    move/16 v501, v12

    move/16 v473, v348

    move/16 v474, v349

    move/16 v475, v350

    move/16 v476, v351

    move/16 v480, v352

    move/16 v477, v353

    move/16 v478, v354

    move/16 v479, v355

    move/16 v482, v356

    move/16 v483, v357

    move/16 v484, v358

    move/16 v485, v359

    move/16 v516, v360

    move/16 v517, v361

    move/16 v519, v362

    move/16 v520, v363

    move/16 v522, v364

    move/16 v521, v365

    move/16 v524, v366

    move/16 v525, v367

    move/16 v487, v368

    move/16 v488, v369

    move/16 v489, v370

    move/16 v490, v371

    move/16 v502, v372

    move/16 v503, v373

    move/16 v505, v374

    move/16 v506, v375

    move/16 v508, v376

    move/16 v507, v377

    move/16 v510, v378

    move/16 v511, v379

    move/16 v492, v380

    move/16 v493, v381

    move/16 v494, v382

    move/16 v495, v383

    move/16 v497, v384

    move/16 v498, v385

    move/16 v499, v386

    move/16 v500, v387

    move/16 v527, v388

    move/16 v526, v389

    move/16 v529, v390

    move/from16 v12, v391

    move/16 v513, v392

    move/16 v512, v393

    move/16 v514, v394

    move/16 v515, v395

    .end local v2    # "rotation":I
    .end local v8    # "blzyVictoryEndX":I
    .end local v9    # "blzyVictoryEndY":I
    .end local v10    # "blzyOverY":I
    .end local v11    # "blzyOverEndX":I
    .end local v348    # "wzryOverX":I
    .end local v349    # "wzryOverY":I
    .end local v350    # "wzryOverEndX":I
    .end local v351    # "wzryOverEndY":I
    .end local v352    # "wzryErrorX":I
    .end local v353    # "wzryErrorY":I
    .end local v354    # "wzryErrorEndX":I
    .end local v355    # "wzryErrorEndY":I
    .end local v356    # "wzryRecordX":I
    .end local v357    # "wzryRecordY":I
    .end local v358    # "wzryRecordEndX":I
    .end local v359    # "wzryRecordEndY":I
    .end local v360    # "wzryKillX":I
    .end local v361    # "wzryKillY":I
    .end local v362    # "wzryKillEndX":I
    .end local v363    # "wzryKillEndY":I
    .end local v364    # "wzryAssistX":I
    .end local v365    # "wzryAssistY":I
    .end local v366    # "wzryAssistEndX":I
    .end local v367    # "wzryAssistEndY":I
    .end local v368    # "wzryRecordTwoX":I
    .end local v369    # "wzryRecordTwoY":I
    .end local v370    # "wzryRecordTwoEndX":I
    .end local v371    # "wzryRecordTwoEndY":I
    .end local v372    # "wzryKillTwoX":I
    .end local v373    # "wzryKillTwoY":I
    .end local v374    # "wzryKillTwoEndX":I
    .end local v375    # "wzryKillTwoEndY":I
    .end local v376    # "wzryAssistTwoX":I
    .end local v377    # "wzryAssistTwoY":I
    .end local v378    # "wzryAssistTwoEndX":I
    .end local v379    # "wzryAssistTwoEndY":I
    .end local v380    # "wzryVictoryX":I
    .end local v381    # "wzryVictoryY":I
    .end local v382    # "wzryVictoryEndX":I
    .end local v383    # "wzryVictoryEndY":I
    .end local v384    # "wzryToastX":I
    .end local v385    # "wzryToastY":I
    .end local v386    # "wzryToastEndX":I
    .end local v387    # "wzryToastEndY":I
    .end local v388    # "wzryDieX":I
    .end local v389    # "wzryDieY":I
    .end local v390    # "wzryDieEndX":I
    .end local v391    # "wzryDieEndY":I
    .end local v392    # "wzryDieTwoX":I
    .end local v393    # "wzryDieTwoY":I
    .end local v394    # "wzryDieTwoEndX":I
    .end local v395    # "wzryDieTwoEndY":I
    .local v12, "wzryDieEndY":I
    .restart local v473    # "wzryOverX":I
    .restart local v474    # "wzryOverY":I
    .restart local v475    # "wzryOverEndX":I
    .restart local v476    # "wzryOverEndY":I
    .restart local v477    # "wzryErrorY":I
    .restart local v478    # "wzryErrorEndX":I
    .restart local v479    # "wzryErrorEndY":I
    .restart local v480    # "wzryErrorX":I
    .restart local v481    # "blzyVictoryEndX":I
    .restart local v482    # "wzryRecordX":I
    .restart local v483    # "wzryRecordY":I
    .restart local v484    # "wzryRecordEndX":I
    .restart local v485    # "wzryRecordEndY":I
    .restart local v486    # "blzyVictoryEndY":I
    .restart local v487    # "wzryRecordTwoX":I
    .restart local v488    # "wzryRecordTwoY":I
    .restart local v489    # "wzryRecordTwoEndX":I
    .restart local v490    # "wzryRecordTwoEndY":I
    .restart local v491    # "blzyOverY":I
    .restart local v492    # "wzryVictoryX":I
    .restart local v493    # "wzryVictoryY":I
    .restart local v494    # "wzryVictoryEndX":I
    .restart local v495    # "wzryVictoryEndY":I
    .restart local v496    # "blzyOverEndX":I
    .restart local v497    # "wzryToastX":I
    .restart local v498    # "wzryToastY":I
    .restart local v499    # "wzryToastEndX":I
    .restart local v500    # "wzryToastEndY":I
    .restart local v501    # "cjzcKillTwoEndY":I
    .restart local v502    # "wzryKillTwoX":I
    .restart local v503    # "wzryKillTwoY":I
    .restart local v505    # "wzryKillTwoEndX":I
    .restart local v506    # "wzryKillTwoEndY":I
    .restart local v507    # "wzryAssistTwoY":I
    .restart local v508    # "wzryAssistTwoX":I
    .restart local v510    # "wzryAssistTwoEndX":I
    .restart local v511    # "wzryAssistTwoEndY":I
    .restart local v512    # "wzryDieTwoY":I
    .restart local v513    # "wzryDieTwoX":I
    .restart local v514    # "wzryDieTwoEndX":I
    .restart local v515    # "wzryDieTwoEndY":I
    .restart local v516    # "wzryKillX":I
    .restart local v517    # "wzryKillY":I
    .restart local v519    # "wzryKillEndX":I
    .restart local v520    # "wzryKillEndY":I
    .restart local v521    # "wzryAssistY":I
    .restart local v522    # "wzryAssistX":I
    .restart local v524    # "wzryAssistEndX":I
    .restart local v525    # "wzryAssistEndY":I
    .restart local v526    # "wzryDieY":I
    .restart local v527    # "wzryDieX":I
    .restart local v528    # "rotation":I
    .restart local v529    # "wzryDieEndX":I
    :goto_6
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1297
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 420
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mDumpDebugLog:Z

    .line 421
    return-void
.end method

.method public startScreenRecord()V
    .locals 1

    .line 447
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateRedMagicTime()V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartScreenRecord:Z

    .line 449
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->scheduleReadTextRunnable()V

    .line 450
    return-void
.end method

.method public stopScreenRecord()V
    .locals 1

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartScreenRecord:Z

    .line 612
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartCJZC:Z

    .line 613
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartEngCJZC:Z

    .line 614
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartWZRY:Z

    .line 615
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mIsStartBLZY:Z

    .line 616
    return-void
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameType:I

    .line 412
    :cond_0
    return-void
.end method

.method public updateHighlightsCoordinate(I)V
    .locals 3
    .param p1, "gameType"    # I

    .line 415
    const-string v0, "NubiaHighlightsProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHighlightsCoordinate   gameType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iput p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->mGameType:I

    .line 417
    return-void
.end method
