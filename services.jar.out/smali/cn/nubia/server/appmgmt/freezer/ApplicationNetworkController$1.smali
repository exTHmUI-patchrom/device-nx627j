.class Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;
.super Ljava/lang/Object;
.source "ApplicationNetworkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->setUidRule(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

.field final synthetic val$enableNetwork:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    .line 115
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    iput p2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$uid:I

    iput-object p3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$packageName:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$enableNetwork:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->this$0:Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;

    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$uid:I

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$packageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController$1;->val$enableNetwork:Z

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;->access$100(Lcn/nubia/server/appmgmt/freezer/ApplicationNetworkController;ILjava/lang/String;Z)V

    .line 119
    return-void
.end method
