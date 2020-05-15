.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Ljava/lang/Object;
.source "AuxiliaryResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    }
.end annotation


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final installFailureActivity:Landroid/content/ComponentName;

.field public final needsPhaseTwo:Z

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .param p1, "failureActivity"    # Landroid/content/ComponentName;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 68
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 71
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "failureActivity"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "splitName"    # Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "needsPhase2"    # Z
    .param p3, "failureIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 57
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 58
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 60
    return-void
.end method
