.class Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;
.super Ljava/lang/Object;
.source "BadAppController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/BadAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowRemoveRunnable"
.end annotation


# instance fields
.field private mPid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/BadAppController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/BadAppController;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/BadAppController;
    .param p2, "pid"    # I

    .line 92
    iput-object p1, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;->this$0:Lcn/nubia/server/appmgmt/BadAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p2, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;->mPid:I

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;->this$0:Lcn/nubia/server/appmgmt/BadAppController;

    iget v1, p0, Lcn/nubia/server/appmgmt/BadAppController$WindowRemoveRunnable;->mPid:I

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/BadAppController;->access$400(Lcn/nubia/server/appmgmt/BadAppController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    :goto_0
    return-void
.end method
