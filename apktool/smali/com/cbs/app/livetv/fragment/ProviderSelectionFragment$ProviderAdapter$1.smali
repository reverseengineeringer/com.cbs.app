.class final Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cbs/app/view/model/MVPDConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

.field private c:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->b:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/regex/Matcher;)I
    .locals 2

    .prologue
    .line 649
    const v0, 0x7fffffff

    .line 651
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 655
    :cond_0
    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 620
    check-cast p1, Lcom/cbs/app/view/model/MVPDConfig;

    check-cast p2, Lcom/cbs/app/view/model/MVPDConfig;

    .line 1626
    invoke-virtual {p1}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1627
    invoke-virtual {p2}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->c:Ljava/util/regex/Pattern;

    .line 1632
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a(Ljava/util/regex/Matcher;)I

    move-result v1

    .line 1633
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a(Ljava/util/regex/Matcher;)I

    move-result v0

    .line 1636
    if-ne v1, v4, :cond_0

    if-ne v0, v4, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1638
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1641
    :cond_0
    if-ne v1, v0, :cond_1

    .line 1642
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1644
    :goto_0
    return v0

    :cond_1
    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 620
    goto :goto_0
.end method
