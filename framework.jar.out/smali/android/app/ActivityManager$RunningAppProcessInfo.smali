.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningAppProcessInfo$Importance;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final FLAG_PERSISTENT:I = 0x2

.field public static final IMPORTANCE_BACKGROUND:I = 0x190

.field public static final IMPORTANCE_CACHED:I = 0x190

.field public static final IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final IMPORTANCE_EMPTY:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANCE_FOREGROUND:I = 0x64

.field public static final IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final IMPORTANCE_GONE:I = 0x3e8

.field public static final IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final IMPORTANCE_SERVICE:I = 0x12c

.field public static final IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final IMPORTANCE_TOP_SLEEPING_PRE_28:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANCE_VISIBLE:I = 0xc8

.field public static final REASON_PROVIDER_IN_USE:I = 0x1

.field public static final REASON_SERVICE_IN_USE:I = 0x2

.field public static final REASON_UNKNOWN:I


# instance fields
.field public flags:I

.field public importance:I

.field public importanceReasonCode:I

.field public importanceReasonComponent:Landroid/content/ComponentName;

.field public importanceReasonImportance:I

.field public importanceReasonPid:I

.field public lastTrimLevel:I

.field public lru:I

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processState:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3369
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3322
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3323
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3324
    const/4 v0, 0x5

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3325
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3380
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3381
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .line 2966
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "pProcessName"    # Ljava/lang/String;
    .param p2, "pPid"    # I
    .param p3, "pArr"    # [Ljava/lang/String;

    .line 3327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3328
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3329
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3330
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 3331
    return-void
.end method

.method public static importanceToProcState(I)I
    .locals 2
    .param p0, "importance"    # I

    .line 3226
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 3227
    const/16 v0, 0x13

    return v0

    .line 3228
    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_1

    .line 3229
    const/16 v0, 0xd

    return v0

    .line 3230
    :cond_1
    const/16 v0, 0x15e

    if-lt p0, v0, :cond_2

    .line 3231
    const/16 v0, 0xc

    return v0

    .line 3232
    :cond_2
    const/16 v0, 0x145

    if-lt p0, v0, :cond_3

    .line 3233
    const/16 v0, 0xb

    return v0

    .line 3234
    :cond_3
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_4

    .line 3235
    const/16 v0, 0x9

    return v0

    .line 3236
    :cond_4
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_5

    .line 3237
    const/4 v0, 0x7

    return v0

    .line 3238
    :cond_5
    const/16 v0, 0xc8

    const/4 v1, 0x5

    if-lt p0, v0, :cond_6

    .line 3239
    return v1

    .line 3240
    :cond_6
    const/16 v0, 0x96

    if-lt p0, v0, :cond_7

    .line 3241
    return v1

    .line 3242
    :cond_7
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_8

    .line 3243
    const/4 v0, 0x3

    return v0

    .line 3245
    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method public static procStateToImportance(I)I
    .locals 1
    .param p0, "procState"    # I

    .line 3168
    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    .line 3169
    const/16 v0, 0x3e8

    return v0

    .line 3170
    :cond_0
    const/16 v0, 0xd

    if-lt p0, v0, :cond_1

    .line 3171
    const/16 v0, 0x190

    return v0

    .line 3172
    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    .line 3173
    const/16 v0, 0x15e

    return v0

    .line 3174
    :cond_2
    const/16 v0, 0xb

    if-lt p0, v0, :cond_3

    .line 3175
    const/16 v0, 0x145

    return v0

    .line 3176
    :cond_3
    const/16 v0, 0x9

    if-lt p0, v0, :cond_4

    .line 3177
    const/16 v0, 0x12c

    return v0

    .line 3178
    :cond_4
    const/4 v0, 0x7

    if-lt p0, v0, :cond_5

    .line 3179
    const/16 v0, 0xe6

    return v0

    .line 3180
    :cond_5
    const/4 v0, 0x5

    if-lt p0, v0, :cond_6

    .line 3181
    const/16 v0, 0xc8

    return v0

    .line 3182
    :cond_6
    const/4 v0, 0x3

    if-lt p0, v0, :cond_7

    .line 3183
    const/16 v0, 0x7d

    return v0

    .line 3185
    :cond_7
    const/16 v0, 0x64

    return v0
.end method

.method public static procStateToImportanceForClient(ILandroid/content/Context;)I
    .locals 1
    .param p0, "procState"    # I
    .param p1, "clientContext"    # Landroid/content/Context;

    .line 3198
    nop

    .line 3199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3198
    invoke-static {p0, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    return v0
.end method

.method public static procStateToImportanceForTargetSdk(II)I
    .locals 2
    .param p0, "procState"    # I
    .param p1, "targetSdkVersion"    # I

    .line 3208
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    .line 3211
    .local v0, "importance":I
    const/16 v1, 0x1a

    if-ge p1, v1, :cond_3

    .line 3212
    const/16 v1, 0xe6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x145

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3218
    :cond_0
    const/16 v1, 0xaa

    return v1

    .line 3216
    :cond_1
    const/16 v1, 0x96

    return v1

    .line 3214
    :cond_2
    const/16 v1, 0x82

    return v1

    .line 3221
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 3334
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3357
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 3358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3364
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    .line 3366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3367
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3338
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3339
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3341
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3342
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3343
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3344
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3345
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3346
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3347
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3348
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3349
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3350
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3351
    return-void
.end method
