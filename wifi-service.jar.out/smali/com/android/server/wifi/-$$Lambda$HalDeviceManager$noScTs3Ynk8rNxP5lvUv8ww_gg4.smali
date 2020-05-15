.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;->f$0:Lcom/android/server/wifi/HalDeviceManager;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$noScTs3Ynk8rNxP5lvUv8ww_gg4;->f$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$new$3(Lcom/android/server/wifi/HalDeviceManager;J)V

    return-void
.end method
