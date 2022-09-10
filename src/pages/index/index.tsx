import { Component, PropsWithChildren } from 'react'
import { View, Text } from '@tarojs/components'
import Counter from '../../components/Counter.gen'
import './index.scss'

export default class Index extends Component<PropsWithChildren> {

  componentWillMount () { }

  componentDidMount () { }

  componentWillUnmount () { }

  componentDidShow () { }

  componentDidHide () { }

  render () {
    return (
      <View className='index'>
        <Counter />
      </View>
    )
  }
}
