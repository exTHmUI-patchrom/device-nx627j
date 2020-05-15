.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

    iput p2, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

    iget v1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$qbmZWIyVYy07TBvpcxuUvhIB6S4;->f$1:I

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->lambda$onReceive$1(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;I)V

    return-void
.end method
