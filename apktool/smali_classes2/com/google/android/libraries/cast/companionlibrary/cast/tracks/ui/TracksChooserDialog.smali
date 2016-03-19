.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private b:[J

.field private c:Lcom/google/android/gms/cast/d;

.field private d:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

.field private e:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->h:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->i:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/cast/d;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;
    .locals 4

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;-><init>()V

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v2, "media"

    invoke-static {p0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->setArguments(Landroid/os/Bundle;)V

    .line 223
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    return-object v0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v1

    .line 178
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 179
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 180
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    .line 1166
    new-instance v4, Lcom/google/android/gms/cast/h$a;

    const-wide/16 v6, -0x1

    invoke-direct {v4, v6, v7, v0}, Lcom/google/android/gms/cast/h$a;-><init>(JI)V

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_none:I

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/cast/h$a;->b(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/cast/h$a;->a(I)Lcom/google/android/gms/cast/h$a;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/google/android/gms/cast/h$a;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/cast/h$a;->a()Lcom/google/android/gms/cast/h;

    move-result-object v4

    .line 180
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iput v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->h:I

    .line 182
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->i:I

    .line 183
    if-eqz v1, :cond_4

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->b()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 211
    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    if-eqz v4, :cond_1

    .line 191
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    array-length v7, v6

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_1

    aget-wide v8, v6, v4

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 193
    iput v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->h:I

    .line 191
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 198
    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    if-eqz v4, :cond_3

    .line 202
    iget-object v6, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    array-length v7, v6

    move v4, v2

    :goto_3
    if-ge v4, v7, :cond_3

    aget-wide v8, v6, v4

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 204
    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->i:I

    .line 202
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 208
    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 213
    :cond_4
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->setRetainInstance(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->c:Lcom/google/android/gms/cast/d;

    .line 101
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Z()[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->b:[J

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->c:Lcom/google/android/gms/cast/d;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_no_tracks_available:I

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->dismiss()V

    .line 108
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 57
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->custom_tracks_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1123
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview1:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1124
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview2:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1125
    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$id;->text_empty_message:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1126
    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$id;->audio_empty_message:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1127
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a()V

    .line 1129
    new-instance v4, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->tracks_row_layout:I

    iget-object v9, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    iget v10, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->h:I

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    .line 1131
    new-instance v4, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->tracks_row_layout:I

    iget-object v9, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    iget v10, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->i:I

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    .line 1134
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->d:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1135
    iget-object v4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1137
    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$id;->tabhost:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    .line 1138
    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 1141
    const-string v7, "tab1"

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 1142
    iget-object v8, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1143
    :cond_0
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1144
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->text_empty_message:I

    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1149
    :goto_0
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_subtitles:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 1150
    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1153
    const-string v0, "tab2"

    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1154
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1155
    :cond_1
    invoke-virtual {v1, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1156
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->audio_empty_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 1161
    :goto_1
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_caption_audio:I

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 1162
    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 62
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_ok:I

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_cancel:I

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1146
    :cond_2
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview1:I

    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->listview2:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 120
    return-void
.end method
