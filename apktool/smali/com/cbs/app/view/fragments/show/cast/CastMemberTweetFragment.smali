.class public Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field public h:Z

.field i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private k:Landroid/view/View;

.field private l:Lcom/cbs/app/view/model/DeviceCast;

.field private m:[Lcom/cbs/app/view/model/RecentTweet;

.field private n:Lcom/cbs/app/view/model/Show;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->h:Z

    .line 42
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->m:[Lcom/cbs/app/view/model/RecentTweet;

    .line 45
    new-instance v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;[Lcom/cbs/app/view/model/RecentTweet;)[Lcom/cbs/app/view/model/RecentTweet;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->m:[Lcom/cbs/app/view/model/RecentTweet;

    return-object p1
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/cbs/app/service/social/Twitter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/cbs/app/service/social/Twitter;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/Twitter;->b(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public final e()V
    .locals 7

    .prologue
    const v5, 0x7f0f00f4

    const/4 v6, 0x0

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->m:[Lcom/cbs/app/view/model/RecentTweet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->m:[Lcom/cbs/app/view/model/RecentTweet;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 162
    new-instance v2, Lcom/cbs/app/adapter/CastTweetAdapter;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->m:[Lcom/cbs/app/view/model/RecentTweet;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/DeviceCast;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/cbs/app/adapter/CastTweetAdapter;-><init>(Landroid/content/Context;[Lcom/cbs/app/view/model/RecentTweet;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v2, v0}, Lcom/cbs/app/adapter/CastTweetAdapter;->setDeviceCast(Lcom/cbs/app/view/model/DeviceCast;)V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/ListView;

    .line 171
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030064

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "list view footer count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 177
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 178
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 180
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 182
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    const v2, 0x7f0f00dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    if-eqz v0, :cond_1

    .line 192
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/DeviceCast;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    const v2, 0x7f0f00f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :cond_3
    return-void

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    const v2, 0x7f0f00f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getData()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/cbs/app/service/CastTweetServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/CastTweetServiceImpl;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/DeviceCast;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/cbs/app/service/CastTweetService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/cbs/app/view/AbstractAsyncFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 93
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 106
    const-string v0, "deviceCast"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->l:Lcom/cbs/app/view/model/DeviceCast;

    .line 109
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->getData()V

    .line 111
    :cond_0
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->n:Lcom/cbs/app/view/model/Show;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->k:Landroid/view/View;

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->l:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 120
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->n:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->n:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->e:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->n:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberTweetFragment;->f:Ljava/lang/String;

    .line 125
    :cond_1
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 127
    return-void
.end method
