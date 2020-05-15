.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;->f$0:[B

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$XDNTzAU-9I92HztVAJQr4NXR3DU;->f$0:[B

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
