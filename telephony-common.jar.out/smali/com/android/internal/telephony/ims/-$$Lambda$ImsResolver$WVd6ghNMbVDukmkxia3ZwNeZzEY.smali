.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;

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

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
