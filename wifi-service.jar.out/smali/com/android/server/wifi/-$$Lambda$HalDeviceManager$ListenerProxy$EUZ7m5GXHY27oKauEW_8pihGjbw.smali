.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw;->f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$ListenerProxy$EUZ7m5GXHY27oKauEW_8pihGjbw;->f$0:Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    invoke-static {v0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->lambda$trigger$0(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;)V

    return-void
.end method
