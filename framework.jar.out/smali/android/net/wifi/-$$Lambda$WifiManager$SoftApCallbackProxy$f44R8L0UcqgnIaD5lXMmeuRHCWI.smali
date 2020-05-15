.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;->f$1:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onNumClientsChanged$1(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;I)V

    return-void
.end method
