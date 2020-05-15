.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)V

    return-object v0
.end method
