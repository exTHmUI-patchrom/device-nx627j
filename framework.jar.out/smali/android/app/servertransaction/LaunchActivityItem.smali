.class public Landroid/app/servertransaction/LaunchActivityItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "LaunchActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mCurConfig:Landroid/content/res/Configuration;

.field private mIdent:I

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mIsForward:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

.field private mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mProcState:I

.field private mProfilerInfo:Landroid/app/ProfilerInfo;

.field private mReferrer:Ljava/lang/String;

.field private mState:Landroid/os/Bundle;

.field private mViewOptimizeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Landroid/app/servertransaction/LaunchActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/LaunchActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/LaunchActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 19
    .param p1, "in"    # Landroid/os/Parcel;

    move-object/from16 v15, p0

    .line 159
    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    .line 160
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ActivityInfo;

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/res/Configuration;

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/res/Configuration;

    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 165
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v10

    .line 166
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v11

    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/ProfilerInfo;

    .line 160
    move-object v0, v15

    move/from16 v14, v16

    move-object/from16 v15, v17

    invoke-static/range {v0 .. v15}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_0

    .line 175
    :cond_0
    move-object/from16 v2, p1

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/LaunchActivityItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/LaunchActivityItem$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "other"    # Landroid/content/pm/ActivityInfo;

    .line 238
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 239
    if-nez p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 241
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iget v3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iget v3, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 243
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 244
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    move v1, v2

    goto :goto_0

    .line 244
    :cond_2
    nop

    .line 241
    :goto_0
    return v1
.end method

.method private static areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .locals 7
    .param p0, "extras"    # Landroid/os/BaseBundle;
    .param p1, "newExtras"    # Landroid/os/BaseBundle;

    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 253
    return v1

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 259
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 260
    .local v5, "newValue":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 261
    return v1

    .line 264
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 265
    :cond_3
    return v0

    .line 249
    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method public static obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;
    .locals 17
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "ident"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "curConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p6, "referrer"    # Ljava/lang/String;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "procState"    # I
    .param p9, "state"    # Landroid/os/Bundle;
    .param p10, "persistentState"    # Landroid/os/PersistableBundle;
    .param p13, "isForward"    # Z
    .param p14, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z",
            "Landroid/app/ProfilerInfo;",
            ")",
            "Landroid/app/servertransaction/LaunchActivityItem;"
        }
    .end annotation

    .line 105
    .local p11, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p12, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const-class v0, Landroid/app/servertransaction/LaunchActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/LaunchActivityItem;

    .line 106
    .local v0, "instance":Landroid/app/servertransaction/LaunchActivityItem;
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Landroid/app/servertransaction/LaunchActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>()V

    move-object v0, v1

    .line 109
    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    invoke-static/range {v1 .. v16}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    .line 113
    return-object v0
.end method

.method private static setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V
    .locals 0
    .param p0, "instance"    # Landroid/app/servertransaction/LaunchActivityItem;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "ident"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "curConfig"    # Landroid/content/res/Configuration;
    .param p5, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "referrer"    # Ljava/lang/String;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "procState"    # I
    .param p10, "state"    # Landroid/os/Bundle;
    .param p11, "persistentState"    # Landroid/os/PersistableBundle;
    .param p14, "isForward"    # Z
    .param p15, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .line 287
    .local p12, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p13, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 288
    iput p2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    .line 289
    iput-object p3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 290
    iput-object p4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    .line 291
    iput-object p5, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 292
    iput-object p6, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 293
    iput-object p7, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 294
    iput-object p8, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 295
    iput p9, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    .line 296
    iput-object p10, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 297
    iput-object p11, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 298
    iput-object p12, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 299
    iput-object p13, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 300
    iput-boolean p14, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    .line 301
    iput-object p15, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 302
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 191
    return v0

    .line 193
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 196
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/LaunchActivityItem;

    .line 197
    .local v2, "other":Landroid/app/servertransaction/LaunchActivityItem;
    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 198
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    .line 199
    .local v3, "intentsEqual":Z
    :goto_0
    if-eqz v3, :cond_5

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 200
    invoke-direct {p0, v4}, Landroid/app/servertransaction/LaunchActivityItem;->activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 201
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 202
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 203
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 204
    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 205
    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 206
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 207
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-boolean v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 209
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    .line 211
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 199
    :cond_5
    move v0, v1

    :goto_1
    return v0

    .line 194
    .end local v2    # "other":Landroid/app/servertransaction/LaunchActivityItem;
    .end local v3    # "intentsEqual":Z
    :cond_6
    :goto_2
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 21
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    move-object/from16 v0, p0

    .line 80
    const-string v1, "activityStart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 81
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v6, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget v7, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget-object v8, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v11, v0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v12, v0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v13, v0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v14, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v15, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v5, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-boolean v4, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-object v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move v3, v4

    move-object v4, v1

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p1

    invoke-direct/range {v4 .. v19}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;)V

    .line 86
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setViewOptimizeInfo(Ljava/util/List;)V

    .line 90
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v3, v1, v4, v2}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 91
    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 217
    const/16 v0, 0x11

    .line 218
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->filterHashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 219
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    add-int/2addr v0, v3

    .line 220
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 222
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 223
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 224
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 225
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v0, v3

    .line 226
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    nop

    :cond_1
    add-int/2addr v2, v4

    .line 227
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 228
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 229
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    add-int/2addr v0, v3

    .line 230
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 232
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 234
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 73
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    .line 74
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 75
    return-void
.end method

.method public recycle()V
    .locals 16

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v15}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    .line 127
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/app/servertransaction/LaunchActivityItem;->setViewOptimizeInfo(Ljava/util/List;)V

    .line 129
    invoke-static/range {p0 .. p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 130
    return-void
.end method

.method public setViewOptimizeInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchActivityItem{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",ident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",curConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",persistentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",profilerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",adjustViewNames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 146
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 149
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 150
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 151
    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mViewOptimizeInfo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    return-void
.end method
