.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$PdhZFLSQ09yzh4_QddS3BirVf1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$PdhZFLSQ09yzh4_QddS3BirVf1U;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$5$PdhZFLSQ09yzh4_QddS3BirVf1U;->f$0:Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;->lambda$onReceive$0(Lcn/nubia/server/screenswitch/ScreenSwitchService$5;)V

    return-void
.end method
