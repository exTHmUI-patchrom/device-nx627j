.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$TTvsStUIyUFrPpvGTlsjBCy3NyM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResult([B)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$getProfile$5([B)Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p1

    return-object p1
.end method
