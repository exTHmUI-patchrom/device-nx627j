.class Lcom/android/server/am/ActivityManagerService$UiHandler$2;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$UiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2440
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->val$pid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2443
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->val$pid:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$2;->val$uid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;II)V

    .line 2445
    return-void
.end method
