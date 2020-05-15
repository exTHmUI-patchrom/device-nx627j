.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:[B

.field private final synthetic f$2:[B

.field private final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>([B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$0:[B

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$1:[B

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$2:[B

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$3:[B

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$0:[B

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$1:[B

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$2:[B

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$5wK_r0z9fLtA1ZRVlbk3WfOYXJI;->f$3:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$prepareDownload$34([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
