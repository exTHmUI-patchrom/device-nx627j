.class Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;
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
    name = "KeyguardStateChangedRunnable"
.end annotation


# instance fields
.field private mKeyguardState:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/PressSensorController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/PressSensorController;I)V
    .locals 0
    .param p2, "state"    # I

    .line 46
    iput-object p1, p0, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/PressSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;->mKeyguardState:I

    .line 48
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/PressSensorController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/PressSensorController;->access$000(Lcn/nubia/server/appmgmt/PressSensorController;)Lnubia/os/presssensor/PressSensorInternal;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/PressSensorController$KeyguardStateChangedRunnable;->mKeyguardState:I

    invoke-virtual {v0, v1}, Lnubia/os/presssensor/PressSensorInternal;->noteKeyguardStateChanged(I)V

    .line 51
    return-void
.end method
