.class Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmLinker"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;->mBinder:Landroid/os/IBinder;

    .line 1359
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 1357
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$MmLinker;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method
