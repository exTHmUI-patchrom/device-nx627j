.class Lcn/nubia/server/policy/edge/BrightnessDialog$5;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/BrightnessDialog;->buildDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/BrightnessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/BrightnessDialog;

    .line 172
    iput-object p1, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$5;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 175
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$5;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$900(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/server/policy/edge/BrightnessDialog$5;->this$0:Lcn/nubia/server/policy/edge/BrightnessDialog;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/BrightnessDialog;->access$1200(Lcn/nubia/server/policy/edge/BrightnessDialog;)V

    .line 177
    return-void
.end method
