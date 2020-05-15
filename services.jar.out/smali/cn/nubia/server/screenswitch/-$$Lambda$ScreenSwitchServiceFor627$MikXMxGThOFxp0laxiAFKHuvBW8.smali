.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iput p2, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$1:I

    iput-object p3, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$1:I

    iget-object v2, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->lambda$checkSwipe$3(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
