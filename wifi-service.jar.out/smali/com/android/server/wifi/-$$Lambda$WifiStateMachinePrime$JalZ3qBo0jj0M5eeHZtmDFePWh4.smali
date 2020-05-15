.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$JalZ3qBo0jj0M5eeHZtmDFePWh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$JalZ3qBo0jj0M5eeHZtmDFePWh4;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$JalZ3qBo0jj0M5eeHZtmDFePWh4;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->lambda$shutdownWifi$2(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    return-void
.end method
