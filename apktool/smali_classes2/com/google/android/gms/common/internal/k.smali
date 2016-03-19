.class public final Lcom/google/android/gms/common/internal/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sparse-switch p1, :sswitch_data_0

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1000
    :sswitch_0
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-le v0, v5, :cond_2

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ka;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 2000
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ka;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    if-gt v4, v5, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v0, v4, :cond_3

    move v0, v1

    .line 1000
    :goto_2
    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    .line 0
    :goto_3
    if-eqz v0, :cond_6

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1000
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2000
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1000
    goto :goto_3

    .line 0
    :cond_6
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/google/android/gms/R$string;->common_android_wear_update_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_api_unavailable_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_7
        0x7 -> :sswitch_6
        0x9 -> :sswitch_5
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_2
        0x2a -> :sswitch_4
    .end sparse-switch
.end method
