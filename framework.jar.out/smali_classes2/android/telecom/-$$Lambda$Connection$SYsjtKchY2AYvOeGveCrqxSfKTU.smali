.class public final synthetic Landroid/telecom/-$$Lambda$Connection$SYsjtKchY2AYvOeGveCrqxSfKTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$Connection$SYsjtKchY2AYvOeGveCrqxSfKTU;->f$0:Landroid/telecom/Connection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/-$$Lambda$Connection$SYsjtKchY2AYvOeGveCrqxSfKTU;->f$0:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void
.end method
