.class Lcn/nubia/server/appmgmt/AppDataManager$1;
.super Ljava/lang/Object;
.source "AppDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/AppDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/AppDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/AppDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/AppDataManager;

    .line 116
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppDataManager$1;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppDataManager$1;->this$0:Lcn/nubia/server/appmgmt/AppDataManager;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->access$000(Lcn/nubia/server/appmgmt/AppDataManager;)V

    .line 120
    return-void
.end method