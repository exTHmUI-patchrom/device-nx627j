.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$yzZAwp7gNT7p3a7oN3QLFRZIwbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/SwitchImplFor627;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$yzZAwp7gNT7p3a7oN3QLFRZIwbc;->f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchImplFor627$yzZAwp7gNT7p3a7oN3QLFRZIwbc;->f$0:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->lambda$checkAndResetPowerMode$2(Lcn/nubia/server/screenswitch/SwitchImplFor627;)V

    return-void
.end method
