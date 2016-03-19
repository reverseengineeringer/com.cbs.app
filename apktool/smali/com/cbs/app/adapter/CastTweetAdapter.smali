.class public Lcom/cbs/app/adapter/CastTweetAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/CastTweetAdapter$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cbs/app/view/model/DeviceCast;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Lcom/cbs/app/view/model/RecentTweet;

.field private f:Lcom/cbs/app/service/social/Twitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/cbs/app/view/model/RecentTweet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->c:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->d:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    .line 37
    iput-object p4, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->c:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->d:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/cbs/app/service/social/Twitter;

    iget-object v1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/service/social/Twitter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->f:Lcom/cbs/app/service/social/Twitter;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adapter/CastTweetAdapter;)Lcom/cbs/app/service/social/Twitter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->f:Lcom/cbs/app/service/social/Twitter;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/adapter/CastTweetAdapter;)Lcom/cbs/app/view/model/DeviceCast;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->b:Lcom/cbs/app/view/model/DeviceCast;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 72
    if-nez p2, :cond_3

    .line 73
    iget-object v0, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;

    invoke-direct {v1}, Lcom/cbs/app/adapter/CastTweetAdapter$a;-><init>()V

    .line 77
    const v0, 0x7f0f0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->a:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0f00df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->g:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0f00e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->h:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->c:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0f00e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->b:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0f00e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->d:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0f00e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->e:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0f00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/adapter/CastTweetAdapter$a;->f:Landroid/widget/Button;

    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/RecentTweet;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v3}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 97
    :cond_0
    iget-object v1, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/RecentTweet;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->c:Landroid/widget/TextView;

    .line 101
    if-eqz v2, :cond_1

    .line 102
    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-static {v3, v1}, Lcom/cbs/app/view/utils/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    iget-object v1, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->b:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/cbs/app/view/model/RecentTweet;->getText()Ljava/lang/String;

    move-result-object v2

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->e:[Lcom/cbs/app/view/model/RecentTweet;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/RecentTweet;->getId()J

    move-result-wide v2

    .line 111
    iget-object v1, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->e:Landroid/widget/Button;

    new-instance v4, Lcom/cbs/app/adapter/CastTweetAdapter$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/cbs/app/adapter/CastTweetAdapter$1;-><init>(Lcom/cbs/app/adapter/CastTweetAdapter;J)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->f:Landroid/widget/Button;

    new-instance v4, Lcom/cbs/app/adapter/CastTweetAdapter$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/cbs/app/adapter/CastTweetAdapter$2;-><init>(Lcom/cbs/app/adapter/CastTweetAdapter;J)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;->d:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/adapter/CastTweetAdapter$3;

    invoke-direct {v1, p0, v2, v3}, Lcom/cbs/app/adapter/CastTweetAdapter$3;-><init>(Lcom/cbs/app/adapter/CastTweetAdapter;J)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-object p2

    .line 90
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adapter/CastTweetAdapter$a;

    goto :goto_0
.end method

.method public setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/adapter/CastTweetAdapter;->b:Lcom/cbs/app/view/model/DeviceCast;

    .line 44
    return-void
.end method
