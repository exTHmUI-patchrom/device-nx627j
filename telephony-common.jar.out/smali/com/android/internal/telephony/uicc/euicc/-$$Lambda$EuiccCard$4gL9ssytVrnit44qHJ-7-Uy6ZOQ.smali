.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccCard$ApduResponseHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;->INSTANCE:Lcom/android/internal/telephony/uicc/euicc/-$$Lambda$EuiccCard$4gL9ssytVrnit44qHJ-7-Uy6ZOQ;

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

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->lambda$setNickname$13([B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
