.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$WifiNativeStatusListener$8x2k_C5b_t_MduBbPqLMm2skLMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$WifiNativeStatusListener$8x2k_C5b_t_MduBbPqLMm2skLMA;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$WifiNativeStatusListener$8x2k_C5b_t_MduBbPqLMm2skLMA;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;->lambda$onStatusChanged$0(Lcom/android/server/wifi/WifiStateMachinePrime$WifiNativeStatusListener;)V

    return-void
.end method
