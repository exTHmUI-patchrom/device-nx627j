.class Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;
.super Ljava/lang/Object;
.source "PressSensorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/PressSensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateChangedRunnable"
.end annotation


# instance fields
.field private mScreenState:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PressSensorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PressSensorController;I)V
    .locals 0
    .param p2, "state"    # I

    .line 36
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/PressSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;->mScreenState:I

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/PressSensorController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PressSensorController;->access$000(Lcn/nubia/server/appmgmt/PressSensorController;)Lnubia/os/presssensor/PressSensorInternal;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/PressSensorController$ScreenStateChangedRunnable;->mScreenState:I

    invoke-virtual {v0, v1}, Lnubia/os/presssensor/PressSensorInternal;->noteScreenStateChanged(I)V

    .line 41
    return-void
.end method
