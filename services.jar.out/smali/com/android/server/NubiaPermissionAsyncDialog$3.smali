.class Lcom/android/server/NubiaPermissionAsyncDialog$3;
.super Ljava/lang/Object;
.source "NubiaPermissionAsyncDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NubiaPermissionAsyncDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaPermissionAsyncDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 186
    iput-object p1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x7fba3ba6

    goto :goto_0

    :cond_0
    const v1, -0xba3ba6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$3;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->postInvalidate()V

    .line 192
    return-void
.end method
