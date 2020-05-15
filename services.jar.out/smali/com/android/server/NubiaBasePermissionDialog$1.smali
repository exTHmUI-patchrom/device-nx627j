.class Lcom/android/server/NubiaBasePermissionDialog$1;
.super Ljava/lang/Object;
.source "NubiaBasePermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NubiaBasePermissionDialog;-><init>(Landroid/content/Context;)V
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

    .line 50
    iput-object p1, p0, Lcom/android/server/NubiaBasePermissionDialog$1;->this$0:Lcom/android/server/NubiaBasePermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/NubiaBasePermissionDialog;->access$000(Z)V

    .line 54
    return-void
.end method
