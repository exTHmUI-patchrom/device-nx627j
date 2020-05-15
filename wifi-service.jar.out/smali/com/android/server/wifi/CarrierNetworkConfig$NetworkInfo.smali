.class Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;
.super Ljava/lang/Object;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/CarrierNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkInfo"
.end annotation


# instance fields
.field final mCarrierName:Ljava/lang/String;

.field final mEapType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "eapType"    # I
    .param p2, "carrierName"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mEapType:I

    .line 163
    iput-object p2, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierName:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "NetworkInfo: eap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mEapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$NetworkInfo;->mCarrierName:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method
