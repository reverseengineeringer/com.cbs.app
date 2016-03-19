.class public Lcom/cbs/app/view/utils/MomentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 43
    sput-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "AddActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/thing"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "BuyActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/a-book"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "CheckInActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/place"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "CommentActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/blog-entry"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "CreateActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/photo"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "ListenActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/song"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "ReserveActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/restaurant"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    const-string v2, "ReviewActivity"

    const-string v3, "https://developers.google.com/+/plugins/snippet/examples/widget"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    sput-object v0, Lcom/cbs/app/view/utils/MomentUtil;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 63
    sget-object v0, Lcom/cbs/app/view/utils/MomentUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    sput-object v0, Lcom/cbs/app/view/utils/MomentUtil;->c:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    .line 65
    :goto_0
    if-ge v0, v2, :cond_0

    .line 66
    sget-object v1, Lcom/cbs/app/view/utils/MomentUtil;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://schemas.google.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/view/utils/MomentUtil;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
