.class public final Landroid/support/v7/media/MediaRouteSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteSelector$1;,
        Landroid/support/v7/media/MediaRouteSelector$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroid/support/v7/media/MediaRouteSelector;

.field private static final KEY_CONTROL_CATEGORIES:Ljava/lang/String; = "controlCategories"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mControlCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    .line 59
    iput-object p2, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteSelector$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/media/MediaRouteSelector;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-object v0
.end method

.method private ensureControlCategories()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    .line 79
    :cond_1
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final asBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final contains(Landroid/support/v7/media/MediaRouteSelector;)Z
    .locals 2

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 138
    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 139
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 165
    instance-of v0, p1, Landroid/support/v7/media/MediaRouteSelector;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Landroid/support/v7/media/MediaRouteSelector;

    .line 167
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 168
    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 169
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getControlCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 69
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-object v0
.end method

.method public final hasControlCategory(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 90
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 91
    :goto_0
    if-ge v2, v3, :cond_1

    .line 92
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 97
    :goto_1
    return v0

    .line 91
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 177
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 157
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final matchesControlFilters(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    if-eqz p1, :cond_2

    .line 108
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 109
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    .line 112
    :goto_0
    if-ge v4, v6, :cond_2

    .line 113
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 114
    if-eqz v0, :cond_1

    move v3, v2

    .line 115
    :goto_1
    if-ge v3, v5, :cond_1

    .line 116
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 124
    :goto_2
    return v0

    .line 115
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 112
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 124
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v1, "MediaRouteSelector{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "controlCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
