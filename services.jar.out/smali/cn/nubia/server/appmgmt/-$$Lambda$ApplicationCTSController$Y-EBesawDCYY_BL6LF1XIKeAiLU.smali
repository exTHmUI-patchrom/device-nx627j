.class public final synthetic Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/appmgmt/ApplicationCTSController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/appmgmt/ApplicationCTSController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;->f$0:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;->f$0:Lcn/nubia/server/appmgmt/ApplicationCTSController;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;->f$1:Z

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/ApplicationCTSController;->lambda$setCTSRule$0(Lcn/nubia/server/appmgmt/ApplicationCTSController;Z)V

    return-void
.end method
