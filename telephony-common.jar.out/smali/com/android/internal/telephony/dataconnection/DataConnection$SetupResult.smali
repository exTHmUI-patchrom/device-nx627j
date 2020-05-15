.class public final enum Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

.field public static final enum ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

.field public static final enum ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

.field public static final enum ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

.field public static final enum ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;


# instance fields
.field public mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 356
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 357
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const-string v1, "ERROR_RADIO_NOT_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 358
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const-string v1, "ERROR_INVALID_ARG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 359
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const-string v1, "ERROR_STALE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 360
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    const-string v1, "ERROR_DATA_SERVICE_SPECIFIC_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 355
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 365
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 366
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 355
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 1

    .line 355
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  SetupResult.mFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
