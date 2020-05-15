.class final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field final clientTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

.field duration:I

.field mode:I

.field public noteOpCount:I

.field final op:I

.field final packageName:Ljava/lang/String;

.field proxyPackageName:Ljava/lang/String;

.field proxyUid:I

.field rejectTime:[J

.field startNesting:I

.field public startOpCount:I

.field startRealtime:J

.field time:[J

.field final uid:I

.field final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V
    .locals 2
    .param p1, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 436
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 437
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 447
    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 448
    iget v0, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 449
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 450
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 451
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 453
    new-instance v0, Lcom/android/server/NubiaPermissionDialogReqQueue;

    invoke-direct {v0}, Lcom/android/server/NubiaPermissionDialogReqQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    .line 456
    return-void
.end method


# virtual methods
.method getMode()I
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v0

    return v0
.end method

.method hasAnyTime()Z
    .locals 8

    .line 459
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 461
    return v3

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 464
    return v3

    .line 459
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    :cond_2
    return v0
.end method
