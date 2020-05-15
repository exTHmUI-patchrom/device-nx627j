.class final Landroid/app/ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "_iconId"    # I

    .line 1700
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1701
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .locals 1
    .param p1, "cInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "_iconId"    # I

    .line 1704
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1705
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "_iconId"    # I

    .line 1708
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1709
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_iconId"    # I

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 1696
    iput p2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    .line 1697
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1713
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1714
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1716
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1718
    .local v2, "that":Landroid/app/ApplicationPackageManager$ResourceName;
    iget v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    iget v4, v2, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    if-eq v3, v4, :cond_2

    return v1

    .line 1719
    :cond_2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 1720
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5

    :cond_4
    goto :goto_1

    .line 1719
    :cond_5
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 1714
    .end local v2    # "that":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1727
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1728
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    add-int/2addr v1, v2

    .line 1729
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ApplicationPackageManager$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
