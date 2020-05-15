.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyPermissions;->lambda$static$0()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method
