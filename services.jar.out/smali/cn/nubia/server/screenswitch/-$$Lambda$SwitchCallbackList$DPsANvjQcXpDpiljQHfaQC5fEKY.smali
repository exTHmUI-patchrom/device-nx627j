.class public final synthetic Lcn/nubia/server/screenswitch/-$$Lambda$SwitchCallbackList$DPsANvjQcXpDpiljQHfaQC5fEKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/server/screenswitch/SwitchCallbackList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchCallbackList$DPsANvjQcXpDpiljQHfaQC5fEKY;->f$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/-$$Lambda$SwitchCallbackList$DPsANvjQcXpDpiljQHfaQC5fEKY;->f$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->lambda$resetResults$0(Lcn/nubia/server/screenswitch/SwitchCallbackList;Landroid/os/IInterface;)V

    return-void
.end method
