.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduRequestBuilder;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;->f$0:I

    return-void
.end method


# virtual methods
.method public final build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$KOXfsx-q_NGiOmoDdBfBkea98mo;->f$0:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$retrieveNotification$44(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
