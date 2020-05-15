.class Lcom/android/server/am/ActivityManagerService$UiHandler$3;
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


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 2452
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$3;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler$3;->this$1:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V

    .line 2457
    return-void
.end method
