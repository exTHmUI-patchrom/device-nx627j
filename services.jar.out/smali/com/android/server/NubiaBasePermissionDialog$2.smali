.class Lcom/android/server/NubiaBasePermissionDialog$2;
.super Landroid/os/Handler;
.source "NubiaBasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaBasePermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaBasePermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaBasePermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaBasePermissionDialog;

    .line 115
    iput-object p1, p0, Lcom/android/server/NubiaBasePermissionDialog$2;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog$2;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->access$102(Lcom/android/server/NubiaBasePermissionDialog;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog$2;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->access$200(Lcom/android/server/NubiaBasePermissionDialog;Z)V

    .line 121
    :cond_0
    return-void
.end method
