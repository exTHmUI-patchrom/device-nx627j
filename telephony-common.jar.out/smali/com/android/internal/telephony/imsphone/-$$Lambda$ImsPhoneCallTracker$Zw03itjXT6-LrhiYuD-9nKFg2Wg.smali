.class public final synthetic Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;->INSTANCE:Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->lambda$new$0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method
