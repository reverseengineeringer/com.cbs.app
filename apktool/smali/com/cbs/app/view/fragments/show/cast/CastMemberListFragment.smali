.class public Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v7/app/AppCompatActivity;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/cbs/app/adapter/DeviceCastAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 34
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->d:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->e:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Lcom/cbs/app/adapter/DeviceCastAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    const v0, 0x7f03002e

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string v0, "deviceHostList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 66
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->e:Ljava/util/List;

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    const-string v0, "deviceCastList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 72
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->d:Ljava/util/List;

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1093
    new-instance v0, Lcom/cbs/app/adapter/DeviceCastAdapter;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/cbs/app/adapter/DeviceCastAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    .line 1094
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    .line 1095
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    invoke-virtual {v2, v0}, Lcom/cbs/app/adapter/DeviceCastAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/DeviceCast;

    .line 1098
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    invoke-virtual {v2, v0}, Lcom/cbs/app/adapter/DeviceCastAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 1101
    :cond_3
    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment$a;-><init>(Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;)V

    .line 1102
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1103
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1105
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    const v2, 0x7f0f00ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1106
    check-cast v0, Lcom/cbs/app/widget/HorizontalListView;

    .line 1107
    invoke-virtual {v0, v1}, Lcom/cbs/app/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1108
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    invoke-virtual {v0, v1}, Lcom/cbs/app/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    return-object v0

    .line 1111
    :cond_6
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    const v2, 0x7f0f00ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1112
    check-cast v0, Landroid/widget/ListView;

    .line 1114
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030064

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list view footer count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 1118
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1119
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1121
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1122
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->f:Lcom/cbs/app/adapter/DeviceCastAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastMemberListFragment;->c:Landroid/view/View;

    .line 84
    return-void
.end method
