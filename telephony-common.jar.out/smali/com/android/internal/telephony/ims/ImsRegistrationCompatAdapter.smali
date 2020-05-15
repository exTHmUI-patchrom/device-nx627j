.class public Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRegistrationCompatAdapter.java"


# static fields
.field private static final RADIO_TECH_MAPPER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListener:Lcom/android/ims/internal/IImsRegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->RADIO_TECH_MAPPER:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->RADIO_TECH_MAPPER:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->RADIO_TECH_MAPPER:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;-><init>(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->RADIO_TECH_MAPPER:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v0
.end method
