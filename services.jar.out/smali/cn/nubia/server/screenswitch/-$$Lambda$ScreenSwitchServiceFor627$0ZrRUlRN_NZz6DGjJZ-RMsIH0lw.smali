.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$0ZrRUlRN_NZz6DGjJZ-RMsIH0lw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$0ZrRUlRN_NZz6DGjJZ-RMsIH0lw;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$0ZrRUlRN_NZz6DGjJZ-RMsIH0lw;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->lambda$abortSwitchWhenScreenProjection$1(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    return-void
.end method
