.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$sD9SHkB4VuFTLcTxFRz-WkBxp-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$sD9SHkB4VuFTLcTxFRz-WkBxp-U;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$sD9SHkB4VuFTLcTxFRz-WkBxp-U;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->lambda$abortSwitchWhenScreenProjection$2(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method
