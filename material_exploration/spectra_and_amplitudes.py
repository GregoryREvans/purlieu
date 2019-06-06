from evans.general_tools.scale_reproportioning.reproportion_scale import reproportion_scale, reproportion_harmonics

base_10_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=10,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_11_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=11,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_12_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=12,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_13_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=13,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_14_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=14,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_15_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=15,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_16_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=16,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_17_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=17,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_18_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=18,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_19_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=19,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

base_20_spectra_and_amplitudes = reproportion_harmonics(
    fund=20,
    scale=reproportion_scale(
        base=20,
        limit=30,),
    return_amp_reciprocals='as_lists',
    )

spectral_materials = [
    base_10_spectra_and_amplitudes,
    base_11_spectra_and_amplitudes,
    base_12_spectra_and_amplitudes,
    base_13_spectra_and_amplitudes,
    base_14_spectra_and_amplitudes,
    base_15_spectra_and_amplitudes,
    base_16_spectra_and_amplitudes,
    base_17_spectra_and_amplitudes,
    base_18_spectra_and_amplitudes,
    base_19_spectra_and_amplitudes,
    base_20_spectra_and_amplitudes,
    ]

for _ in spectral_materials:
    print(_)
