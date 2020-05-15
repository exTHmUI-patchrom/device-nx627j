.class Lcn/nubia/server/appmgmt/permission/ToastUtils$2;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/permission/ToastUtils;->showToast(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$resId:I

    iput p3, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$context:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$resId:I

    iget v2, p0, Lcn/nubia/server/appmgmt/permission/ToastUtils$2;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method
